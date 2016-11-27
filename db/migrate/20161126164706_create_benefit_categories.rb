class CreateBenefitCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :benefit_categories do |t|

      t.timestamps
    end
  end
end
