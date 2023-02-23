class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |t|
      t.string :name, null: false, default: ""
      t.string :description, null: false, default: ""
      t.timestamps
    end
  end
end
