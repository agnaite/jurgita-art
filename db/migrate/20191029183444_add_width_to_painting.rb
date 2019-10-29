class AddWidthToPainting < ActiveRecord::Migration[6.0]
  def change
    add_column :paintings, :width, :integer
  end
end
