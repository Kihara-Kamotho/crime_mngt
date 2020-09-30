class CreatePoliceStations < ActiveRecord::Migration[6.0]
  def change
    create_table :police_stations do |t|
      t.string :name
      t.integer :tel
      t.string :location

      t.timestamps
    end
  end
end
