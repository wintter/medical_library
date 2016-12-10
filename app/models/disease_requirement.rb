class DiseaseRequirement < ApplicationRecord
  include DiseaseRequirementAdmin
  has_many :requirement, class_name: PatientDiseaseRequirement.name
end
