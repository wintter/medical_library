module ProfessionAdmin
  extend ActiveSupport::Concern

  included do
    rails_admin do
      visible false
      label_plural I18n.t('models.professions')
      label I18n.t('models.profession')

      field :name do
        label 'Назва'
      end
      field :code do
        label 'Код'
      end
    end
  end
end
