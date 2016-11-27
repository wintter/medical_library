class CreatePatientDiseases < ActiveRecord::Migration[5.0]
  def change
    create_table :patient_diseases do |t|
      t.integer :patient_id
      t.integer :disease_id
      t.datetime :start_date
      t.datetime :end_date
      t.text :comment

      t.timestamps
    end
    add_index 'patient_diseases', %w(patient_id disease_id), name: 'index_patient_diseases_on_patient_id_and_disease_id'
  end
end
