class PatientDisease < ApplicationRecord
  include PatientDiseaseAdmin
  belongs_to :patient
  belongs_to :disease
end
