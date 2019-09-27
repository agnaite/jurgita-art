class RemoveCategoryFromPainting < ActiveRecord::Migration[6.0]
  def change

    remove_column :paintings, :category, :string
  end
end
