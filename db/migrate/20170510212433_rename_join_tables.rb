class RenameJoinTables < ActiveRecord::Migration[5.1]
  def change
    rename_table(:recipes_tags, :labels)
    rename_table(:ingredients_recipes, :materials)
  end
end
