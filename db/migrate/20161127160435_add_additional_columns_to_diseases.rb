class AddAdditionalColumnsToDiseases < ActiveRecord::Migration[5.0]
  def change
    add_column :diseases, :symptoms, :text
    add_column :diseases, :reason, :text
    add_column :diseases, :diagnostics, :text
    add_column :diseases, :treatment, :text
  end
end
