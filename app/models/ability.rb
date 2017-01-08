class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)

    if user.clinician?
      can :manage, :all
    elsif user.receptionist?
      can :dashboard
      can :access, :rails_admin
      can :manage, [Patient, PatientDisease, PatientMedication, Disease, Medication, Profession, BenefitCategory]
    elsif user.patient?
      can :read, Patient, id: user.id
    end
  end
end
