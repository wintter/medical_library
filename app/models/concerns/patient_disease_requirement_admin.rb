module PatientDiseaseRequirementAdmin
  extend ActiveSupport::Concern

  included do
    rails_admin do
      visible false
      label I18n.t('models.patient_disease')
      label_plural I18n.t('models.patient_diseases')
      navigation_label I18n.t('models.disease_navigation')
      object_label_method do
        :custom_label_method
      end
    end

    def custom_label_method
      "Показання (#{disease_requirement.name})"
    end
  end
end
