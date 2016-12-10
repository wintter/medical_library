module PatientDiagnosticsAdmin
  extend ActiveSupport::Concern

  included do
    rails_admin do
      visible false
      label 'Диагноз'
      label_plural 'Диагнози'
      navigation_label I18n.t('models.disease_navigation')
      # object_label_method do
      #   :custom_label_method
      # end

      field :patient do
        inverse_of :patient
        label I18n.t('models.patient')
      end
      field :disease do
        label I18n.t('models.disease')
      end
      field :comment do
        label 'Коментарiй'
      end
    end

    # def custom_label_method
    #   "Диагноз # #{id} (#{disease.name})"
    # end
  end
end
