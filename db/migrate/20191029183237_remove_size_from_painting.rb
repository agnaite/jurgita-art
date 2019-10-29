class RemoveSizeFromPainting < ActiveRecord::Migration[6.0]
  def change

    remove_column :paintings, :size, :string
  end
end
