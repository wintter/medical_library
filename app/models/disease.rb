class Disease < ApplicationRecord
  include DiseaseAdmin
  has_many :patient_diseases
  has_many :patients, through: :patient_diseases

  has_many :patient_diagnostics
  has_many :patients, through: :patient_diagnostics

  validates :name, :symptoms, :reason, :diagnostics, :treatment, presence: true

  before_save :assign_requirements, if: :requirements_changed?

  def has_requirement?(requirement)
    requirements.split('/').include? requirement.id.to_s
  end

  private

  def assign_requirements
    self.requirements = JSON.parse(requirements).reject(&:blank?).join('/')
  end
end
