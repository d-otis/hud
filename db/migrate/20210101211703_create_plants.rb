class CreatePlants < ActiveRecord::Migration[6.0]
  def change
    create_table :plants do |t|
      t.string :name
      t.string :species
      t.string :photo_url
      t.string :season
      t.text :fertilzation
      t.text :care_info

      t.timestamps
    end
  end
end
