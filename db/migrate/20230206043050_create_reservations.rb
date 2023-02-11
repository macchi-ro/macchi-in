class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.integer :plan_id, null: false
      t.integer :customer_id, null: false
      t.integer :room_id, null: false
      t.datetime :lodgment_date, null: false
      t.integer :nights_number, null: false
      t.integer :count, null: false
      t.integer :room_number, null: false
      t.string :note, null: false
      t.integer :including_tax_total_amount, null: false
      t.timestamps
    end
  end
end
