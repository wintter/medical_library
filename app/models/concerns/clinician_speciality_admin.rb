module ClinicianSpecialityAdmin
  extend ActiveSupport::Concern

  included do
    rails_admin do
      visible false
      label_plural I18n.t('models.clinician_specialtity')
    end
  end
end
