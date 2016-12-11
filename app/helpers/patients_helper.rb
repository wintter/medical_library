module PatientsHelper
  def full_name(patient)
    "#{patient.surname} #{patient.name} #{patient.patronymic}"
  end

  def formatted_time(time=Time.current)
    %w(%d %m %y).inject(String.new) { |str, f| str << time.strftime(f) }.split('')
  end
end
