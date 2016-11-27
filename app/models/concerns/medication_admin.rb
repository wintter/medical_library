module MedicationAdmin
  extend ActiveSupport::Concern

  included do
    rails_admin do
      label I18n.t('models.medication')
      label_plural I18n.t('models.medications')
      navigation_label I18n.t('catalog_label')

      field :name do
        label 'Назва'
      end
      field :substance do
        label 'Діюча речовина'
      end
      field :pharm_group do
        label 'Фармокологічна группа'
      end
      field :pharm_action do
        label 'Фармокологічна дiя'
      end
      field :testimony do
        label 'Показання до застосування'
      end
      field :contraindications do
        label 'Протипоказання'
      end
      field :side_effects do
        label 'Побічна дія'
      end
      field :use do
        label 'Спосіб застосування'
      end
      field :dosage do
        label 'Доза'
      end
    end
  end
end
