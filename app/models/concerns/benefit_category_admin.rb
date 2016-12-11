module BenefitCategoryAdmin
  extend ActiveSupport::Concern

  included do
    rails_admin do
      visible false
      label_plural I18n.t('models.benefit_categories')
      label I18n.t('models.benefit_category')

      field :name do
        label 'Назва'
      end
    end
  end
end
