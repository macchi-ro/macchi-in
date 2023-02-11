class CreatePlans < ActiveRecord::Migration[6.1]
  def change
    create_table :plans do |t|
      t.string :name, null: false
      t.integer :tax_excluded_fee, null: false
      t.integer :meal, null: false, default: 0
      t.string :description, null: false
      t.integer :sales_status, null: false, default: 0
      t.timestamps
    end
  end
end
