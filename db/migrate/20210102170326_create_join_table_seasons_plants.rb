class CreateJoinTableSeasonsPlants < ActiveRecord::Migration[6.0]
  def change
    create_join_table :seasons, :plants do |t|
      t.index [:season_id, :plant_id]
      t.index [:plant_id, :season_id]
    end
  end
end
