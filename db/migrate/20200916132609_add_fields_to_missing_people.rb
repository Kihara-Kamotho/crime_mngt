class AddFieldsToMissingPeople < ActiveRecord::Migration[6.0]
  def change
    add_column :missing_people, :city, :string
    add_column :missing_people, :street, :string
    add_column :missing_people, :latitude, :float
    add_column :missing_people, :longitude, :float
  end
end
