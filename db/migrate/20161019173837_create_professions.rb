class CreateProfessions < ActiveRecord::Migration[5.0]
  def change
    create_table :professions do |t|
      t.string :code
      t.string :name

      t.timestamps
    end
  end
end