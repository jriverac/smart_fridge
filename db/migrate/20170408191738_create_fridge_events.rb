class CreateFridgeEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :fridge_events do |t|
      t.decimal :temperature
      t.decimal :temperature
      t.boolean :door_open

      t.timestamps
    end
  end
end
