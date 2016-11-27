class CreateClinicianSpecialities < ActiveRecord::Migration[5.0]
  def change
    create_table :clinician_specialities do |t|
      t.string :name

      t.timestamps
    end
  end
end
