class AddCategoryToPaintings < ActiveRecord::Migration[6.0]
  def change
    add_column :paintings, :category, :string
  end
end
