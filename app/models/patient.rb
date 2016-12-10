class Patient < User
  include PatientAdmin
  belongs_to :profession

  # Callbacks
  before_create :assign_code
  after_initialize { assign_password if new_record? }

  # Associations
  has_many :patient_diseases
  has_many :diseases, through: :patient_diseases

  has_many :patient_medications
  has_many :medications, through: :patient_medications

  has_many :diagnostics, class_name: PatientDiagnostic.name
  accepts_nested_attributes_for :diagnostics, allow_destroy: true

  has_many :disease_requirement, class_name: PatientDiseaseRequirement.name

  validates :email, :name, :surname, :patronymic, presence: true
  validate :diagnostics_requirement

  private

  def diagnostics_requirement
    diagnostics.map(&:disease).each do |disease|
      next if disease.requirements.nil?
      disease.requirements.split('/').each do |requirement_id|
        requirement = PatientDiseaseRequirement.find_by(disease_requirement_id: requirement_id, patient_id: id)
        errors.add(
          I18n.t('activerecord.errors.messages.disease_requirements', disease: disease.name),
          DiseaseRequirement.find(requirement_id).name
        ) if requirement.nil?
      end
    end
  end

  def assign_password
    self.password = SecureRandom.hex(4)
    self.password_confirmation = password
  end

  def assign_code
    self.code = loop do
      code = SecureRandom.hex(3).upcase
      break code unless self.class.exists?(code: code)
    end
  end
end
