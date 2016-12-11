class User < ActiveRecord::Base
  include UserAdmin
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  scope :male, -> { where(gender: 'Male') }
  scope :female, -> { where(gender: 'Female') }

  before_save { assign_default_type if new_record? }

  def clinician?
    is_a? Clinician
  end

  def patient?
    is_a? Patient
  end

  def receptionist?
    is_a? Receptionist
  end

  private

  def assign_default_type
    self.type ||= Receptionist.name
  end
end
