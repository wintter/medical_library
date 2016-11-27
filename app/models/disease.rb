class Disease < ApplicationRecord
  include DiseaseAdmin
  has_many :patient_diseases
  has_many :patients, through: :patient_diseases

  validates :name, :symptoms, :reason, :diagnostics, :treatment, presence: true
end
