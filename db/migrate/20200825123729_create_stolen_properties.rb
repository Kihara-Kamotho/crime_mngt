class CreateStolenProperties < ActiveRecord::Migration[6.0]
  def change
    create_table :stolen_properties do |t|
      t.string :property_name
      t.text :property_description
      t.integer :identification_number
      t.string :place_last_seen
      t.string :owner_name

      t.timestamps
    end
  end
end
