class AddRecipeName < ActiveRecord::Migration[5.1]
  def change
    add_column(:recipes, :name, :string)
  end
end
