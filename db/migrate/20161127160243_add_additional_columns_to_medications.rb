class AddAdditionalColumnsToMedications < ActiveRecord::Migration[5.0]
  def change
    add_column :medications, :substance, :text
    add_column :medications, :pharm_group, :text
    add_column :medications, :pharm_action, :text
    add_column :medications, :testimony, :text
    add_column :medications, :contraindications, :text
    add_column :medications, :side_effects, :text
    add_column :medications, :use, :text
    add_column :medications, :dosage, :text
  end
end
