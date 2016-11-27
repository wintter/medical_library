class Clinician < User
  include ClinicianAdmin
  belongs_to :speciality, class_name: ClinicianSpeciality.name, foreign_key: :clinician_speciality_id

  validates :speciality, presence: true
end
