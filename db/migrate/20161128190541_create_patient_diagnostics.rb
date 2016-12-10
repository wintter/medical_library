class CreatePatientDiagnostics < ActiveRecord::Migration[5.0]
  def change
    create_table :patient_diagnostics do |t|
      t.integer :patient_id
      t.integer :disease_id
      t.text :comment

      t.timestamps
    end
    add_index 'patient_diagnostics', %w(patient_id disease_id), name: 'index_patient_diagnostics_on_patient_id_and_disease_id'
  end
end
