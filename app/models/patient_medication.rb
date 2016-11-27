class PatientMedication < ApplicationRecord
  include PatientMedicationAdmin
  belongs_to :patient
  belongs_to :medication

  validates :patient, :medication, presence: true
end
