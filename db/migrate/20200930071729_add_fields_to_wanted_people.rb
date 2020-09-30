class AddFieldsToWantedPeople < ActiveRecord::Migration[6.0]
  def change
    add_column :wanted_people, :wanted_for, :string
    add_column :wanted_people, :bounty, :integer
  end
end
