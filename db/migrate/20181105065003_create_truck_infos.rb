class CreateTruckInfos < ActiveRecord::Migration[5.0]
  def change
    create_table :truck_infos do |t|
      t.string :truck_plate, null: false
      t.string :cargo_type, null: false
      t.string :driver
      t.string :truck_type
      t.decimal :price, null: false
      t.string :dimension
      t.string :parking_address
      t.string :production_year
      t.string :status, null: false
      t.string :description

      t.timestamps
    end
  end
end
