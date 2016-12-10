module PatientDiseaseAdmin
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

      field :disease do
        label I18n.t('models.disease')
      end
      field :start_date do
        label 'Дата взяття на облiк'
      end
      field :end_date do
        label 'Дата зняття з облiку'
      end
      field :comment do
        label 'Коментарiй'
      end
    end

    def custom_label_method
      "Захворювання (#{disease.name})"
    end
  end
end
