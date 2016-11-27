class Profession < ApplicationRecord
  include ProfessionAdmin
  has_many :patients

  validates :name, :code, presence: true
end
