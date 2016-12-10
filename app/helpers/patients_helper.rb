module PatientsHelper
  def full_name(patient)
    "#{patient.surname} #{patient.name} #{patient.patronymic}"
  end
end
