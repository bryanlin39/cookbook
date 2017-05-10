class IngredientJoinRenameTables < ActiveRecord::Migration[5.1]
  def change
    remove_column(:ingredients, :recipe_id, :integer)
    remove_column(:ingredients, :amount, :string)
    create_table(:ingredients_recipes) do |t|
      t.column(:recipe_id, :integer)
      t.column(:ingredient_id, :integer)
      t.column(:amount, :string)
    end
    rename_table(:recipe_tag, :recipes_tags)
    rename_table(:tag, :tags)    
  end
end
