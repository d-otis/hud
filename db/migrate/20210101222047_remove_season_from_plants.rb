class RemoveSeasonFromPlants < ActiveRecord::Migration[6.0]
  def change
    remove_column :plants, :season_id
  end
end
