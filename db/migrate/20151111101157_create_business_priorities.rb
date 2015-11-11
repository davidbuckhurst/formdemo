class CreateBusinessPriorities < ActiveRecord::Migration
  def change
    create_table :business_priorities do |t|
      t.string :rule_name

      t.timestamps null: false
    end
  end
end
