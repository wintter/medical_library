module PatientMedicationAdmin
  extend ActiveSupport::Concern

  included do
    rails_admin do
      visible false
      label_plural I18n.t('models.patient_medication')
      navigation_label I18n.t('models.medication_navigation')
      object_label_method do
        :custom_label_method
      end

      field :medication do
        label I18n.t('models.medication')
      end
      field :date do
        label 'Дата'
      end
      field :side_reaction do
        label 'Побочна реакцiя'
      end
    end

    def custom_label_method
      "Протипоказання # #{id} (#{medication.name})"
    end
  end
end
