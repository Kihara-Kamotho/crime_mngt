class AddFieldsToReports < ActiveRecord::Migration[6.0]
  def change
    add_column :reports, :city, :string
    add_column :reports, :street, :string
    add_column :reports, :latitude, :float
    add_column :reports, :longitude, :float
  end
end
