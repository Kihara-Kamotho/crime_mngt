class CreateReports < ActiveRecord::Migration[6.0]
  def change
    create_table :reports do |t|
      t.string :crime
      t.text :crime_description
      t.string :crime_scene
      t.text :crime_suspects
      t.string :victim

      t.timestamps
    end
  end
end
