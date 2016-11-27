class Medication < ApplicationRecord
  include MedicationAdmin
  has_many :patient_medications
  has_many :patients, through: :patient_medications

  validates :name, :substance, :pharm_group, :pharm_action, :testimony,
            :contraindications, :side_effects, :use, :dosage, presence: true
end
