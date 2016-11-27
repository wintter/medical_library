class ClinicianSpeciality < ApplicationRecord
  include ClinicianSpecialityAdmin
  has_many :clinicians

  validates :name, presence: true
end
