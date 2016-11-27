module UserAdmin
  extend ActiveSupport::Concern

  included do
    rails_admin do
      visible false
      label I18n.t('models.user')
      label_plural I18n.t('models.users')
      navigation_label I18n.t('models.user')
    end
  end
end
