class CreateDispensaryGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :dispensary_groups do |t|

      t.timestamps
    end
  end
end
