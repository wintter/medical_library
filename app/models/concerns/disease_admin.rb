module DiseaseAdmin
  extend ActiveSupport::Concern

  included do
    rails_admin do
      label I18n.t('models.disease')
      label_plural I18n.t('models.diseases')
      navigation_label I18n.t('catalog_label')

      field :name do
        label 'Назва'
      end
      field :symptoms do
        label 'Симптоми'
      end
      field :reason do
        label 'Причини'
      end
      field :diagnostics do
        label 'Діагностика'
      end
      field :treatment do
        label 'Лікування'
      end
      field :requirements do
        label 'Необхідні показники'
        partial 'disease_requirements'
      end
    end
  end
end
