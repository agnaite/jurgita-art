class AddHeightToPainting < ActiveRecord::Migration[6.0]
  def change
    add_column :paintings, :height, :integer
  end
end
