class PatientDiseaseRequirement < ApplicationRecord
  include PatientDiseaseRequirementAdmin
  belongs_to :patient
  belongs_to :disease_requirement, foreign_key: :disease_requirement_id
end
