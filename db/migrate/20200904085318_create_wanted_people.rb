class CreateWantedPeople < ActiveRecord::Migration[6.0]
  def change
    create_table :wanted_people do |t|
      t.string :name

      t.timestamps
    end
  end
end
