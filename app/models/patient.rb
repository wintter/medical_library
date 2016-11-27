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


  validates :email, :name, :surname, :patronymic, presence: true

  private

  def assign_password
    self.password = SecureRandom.hex(4)
    self.password_confirmation = password
  end

  def assign_code
    self.code = loop do
      code = SecureRandom.hex(2).upcase
      break code unless self.class.exists?(code: code)
    end
  end
end
