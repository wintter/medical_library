class AddRequirementColumnToDiseases < ActiveRecord::Migration[5.0]
  def change
    add_column :diseases, :requirements, :string
  end
end
