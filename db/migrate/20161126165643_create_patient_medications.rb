class CreatePatientMedications < ActiveRecord::Migration[5.0]
  def change
    create_table :patient_medications do |t|
      t.integer :patient_id
      t.integer :medication_id
      t.datetime :date
      t.text :side_reaction

      t.timestamps
    end
    add_index 'patient_medications', %w(patient_id medication_id), name: 'index_patient_medications_on_patient_id_and_medication_id'
  end
end
