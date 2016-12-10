module PatientAdmin
  extend ActiveSupport::Concern

  included do
    rails_admin do
      label_plural I18n.t('models.patient')
      navigation_label I18n.t('models.users')

      list do
        field :code do
          label 'Код'
        end
        field :surname do
          label 'Прізвище'
        end
        field :name do
          label 'Iм`я'
        end
        field :patronymic do
          label 'По батькові'
        end
      end
      edit do
        field :email do
          visible do
            bindings[:view]._current_user.receptionist?
          end
        end
        field :surname do
          label 'Прізвище'
          visible do
            bindings[:view]._current_user.receptionist?
          end
        end
        field :name do
          label 'Iм`я'
          visible do
            bindings[:view]._current_user.receptionist?
          end
        end
        field :patronymic do
          label 'По батькові'
          visible do
            bindings[:view]._current_user.receptionist?
          end
        end
        field :gender do
          label 'Стать'
          visible do
            bindings[:view]._current_user.receptionist?
          end
        end
        field :date_of_birth do
          label 'Дата народження'
          visible do
            bindings[:view]._current_user.receptionist?
          end
          strftime_format I18n.t('dob_format')
        end
        field :home_number do
          label 'Домашнiй телефон'
          visible do
            bindings[:view]._current_user.receptionist?
          end
        end
        field :work_number do
          label 'Робочий телефон'
          visible do
            bindings[:view]._current_user.receptionist?
          end
        end
        field :address do
          label 'Адрес'
          visible do
            bindings[:view]._current_user.receptionist?
          end
        end
        field :benefit_certificate_number do
          label 'Номер посвiдчення'
          visible do
            bindings[:view]._current_user.receptionist?
          end
        end
        field :signal_indicator do
          label 'Сигнальнi iндiкатори'
          visible do
            bindings[:view]._current_user.receptionist?
          end
        end
        field :profession do
          label 'Профессія'
          visible do
            bindings[:view]._current_user.receptionist?
          end
        end
        field :patient_diseases do
          inverse_of :patient
          label I18n.t('models.patient_diseases')
          visible do
            bindings[:view]._current_user.receptionist?
          end
        end
        field :patient_medications do
          inverse_of :patient
          label I18n.t('models.patient_medications')
          visible do
            bindings[:view]._current_user.receptionist?
          end
        end
        field :disease_requirement do
          associated_collection_scope do
            patient = bindings[:object]
            -> (scope) { scope.where(patient_id: patient.id) }
          end
          inverse_of :patient
          label 'Для хвороби'
          visible do
            bindings[:view]._current_user.clinician?
          end
        end
        field :diagnostics do
          inverse_of :patient
          label 'Диагнози'
          visible do
            bindings[:view]._current_user.clinician?
          end
        end
      end
      show do
        field :email
        field :code do
          label 'Код'
        end
        field :surname do
          label 'Прізвище'
        end
        field :name do
          label 'Iм`я'
        end
        field :patronymic do
          label 'По батькові'
        end
        field :gender do
          label 'Стать'
        end
        field :date_of_birth do
          label 'Дата народження'
        end
        field :home_number do
          label 'Домашнiй телефон'
        end
        field :work_number do
          label 'Робочий телефон'
        end
        field :address do
          label 'Адрес'
        end
        field :benefit_certificate_number do
          label 'Номер посвiдчення'
        end
        field :signal_indicator do
          label 'Сигнальнi iндiкатори'
        end
        field :profession do
          label 'Профессія'
        end
        field :patient_diseases do
          label I18n.t('models.patient_diseases')
        end
        field :patient_medications do
          label I18n.t('models.patient_medications')
        end
      end
    end
  end
end
