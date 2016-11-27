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
        field :email
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
        field :diseases do
          label I18n.t('models.diseases')
        end
        field :medications do
          label I18n.t('models.medications')
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
