class CreateMissingPeople < ActiveRecord::Migration[6.0]
  def change
    create_table :missing_people do |t|
      t.string :name
      t.string :gender
      t.string :ward
      t.string :skin_color
      t.float :height
      t.string :place_last_seen
      t.date :date_missing
      t.integer :contacts

      t.timestamps
    end
  end
end
