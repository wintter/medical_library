class CreatePatientDiseaseRequirements < ActiveRecord::Migration[5.0]
  def change
    create_table :patient_disease_requirements do |t|
      t.references :patient, index: true
      t.references :disease_requirement, index: true
      t.text :comment

      t.timestamps
    end
  end
end
