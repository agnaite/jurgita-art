class AddCategoryRefToPaintings < ActiveRecord::Migration[6.0]
  def change
    add_reference :paintings, :category, foreign_key: true
  end
end
