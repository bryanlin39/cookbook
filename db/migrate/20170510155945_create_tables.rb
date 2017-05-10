class CreateTables < ActiveRecord::Migration[5.1]
  def change
    create_table(:recipes) do |t|
      t.column(:instructions, :string)
      t.column(:rating, :float)
    end

    create_table(:ingredients) do |t|
      t.column(:name, :string)
      t.column(:amount, :string)
      t.column(:recipe_id, :integer)
    end

    create_table(:tag) do |t|
      t.column(:name, :string)
    end

    create_table(:recipe_tag) do |t|
      t.column(:recipe_id, :integer)
      t.column(:tag_id, :integer)
    end
  end
end
