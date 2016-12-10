module DiseaseRequirementAdmin
  extend ActiveSupport::Concern

  included do
    rails_admin do
      label I18n.t('models.disease_requirement')
      label_plural I18n.t('models.disease_requirements')
      navigation_label I18n.t('catalog_label')

      field :name do
        label 'Показник'
      end
    end
  end
end
