module ClinicianAdmin
  extend ActiveSupport::Concern

  included do
    rails_admin do
      label_plural I18n.t('models.clinician')
      navigation_label I18n.t('models.users')

      list do
        field :name do
          label 'Iм`я'
        end
        field :surname do
          label 'Прізвище'
        end
        field :patronymic do
          label 'По батькові'
        end
        field :type do
          label 'Тип користувача'
        end
        field :gender do
          label 'Стать'
        end
        field :date_of_birth do
          label 'Дата народження'
        end
        field :speciality do
          label 'Спеціальність'
        end
      end
      edit do
        field :name do
          label 'Iм`я'
        end
        field :surname do
          label 'Прізвище'
        end
        field :patronymic do
          label 'По батькові'
        end
        field :type do
          label 'Тип користувача'
        end
        field :gender do
          label 'Стать'
        end
        field :date_of_birth do
          label 'Дата народження'
        end
        field :speciality do
          label 'Спеціальність'
        end
      end
      show do
        field :name do
          label 'Iм`я'
        end
        field :surname do
          label 'Прізвище'
        end
        field :patronymic do
          label 'По батькові'
        end
        field :type do
          label 'Тип користувача'
        end
        field :gender do
          label 'Стать'
        end
        field :date_of_birth do
          label 'Дата народження'
        end
        field :speciality do
          label 'Спеціальність'
        end
      end
    end
  end
end
