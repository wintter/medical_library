class BenefitCategory < ApplicationRecord
  include BenefitCategoryAdmin
  has_many :patients

  validates :name, presence: true
end
