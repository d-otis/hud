class CreatePlants < ActiveRecord::Migration[6.0]
  def change
    create_table :plants do |t|
      t.string :name
      t.string :species
      t.text :description
      t.integer :season_id
      t.string :watering
      t.string :light
      t.text :fertilzation
      t.string :pest_and_disease
      t.integer :temp_low
      t.integer :temp_hi
      t.string :soil
      t.string :pruning

      t.timestamps
    end
  end
end
