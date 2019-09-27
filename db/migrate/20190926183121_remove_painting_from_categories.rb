class RemovePaintingFromCategories < ActiveRecord::Migration[6.0]
  def change
    remove_reference :categories, :painting, null: false, foreign_key: true
  end
end
