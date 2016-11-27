class AddAdditionalColumnsToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :name, :string
    add_column :users, :surname, :string
    add_column :users, :patronymic, :string
    add_column :users, :type, :string
    add_column :users, :gender, :string
    add_column :users, :date_of_birth, :datetime
    add_column :users, :home_number, :string
    add_column :users, :work_number, :string
    add_column :users, :address, :string
    add_column :users, :benefit_certificate_number, :string
    add_column :users, :signal_indicator, :text
    add_column :users, :code, :string

    add_reference :users, :clinician_speciality, index: true
    add_reference :users, :profession, index: true
  end
end
