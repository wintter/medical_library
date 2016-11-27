class CreateProfessionWorks < ActiveRecord::Migration[5.0]
  def change
    create_table :profession_works do |t|
      t.references :profession, index: true
      t.string :code_zkpptr
      t.string :code_etkd
      t.string :code_dkhp
      t.string :name

      t.timestamps
    end
  end
end
