class AddFieldsToStolenProperties < ActiveRecord::Migration[6.0]
  def change
    add_column :stolen_properties, :city, :string
    add_column :stolen_properties, :street, :string
    add_column :stolen_properties, :latitude, :float
    add_column :stolen_properties, :longitude, :float
  end
end
