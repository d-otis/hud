class RenameFertColumnInPlants < ActiveRecord::Migration[6.0]
  def change
    rename_column :plants, :fertilzation, :fertilization
  end
end
