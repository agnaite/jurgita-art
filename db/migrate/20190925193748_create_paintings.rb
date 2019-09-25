class CreatePaintings < ActiveRecord::Migration[6.0]
  def change
    create_table :paintings do |t|
      t.string  :title
      t.string  :size
      t.string  :medium
      t.string  :price
      t.boolean :new
      t.boolean :sold

      t.timestamps
    end
  end
end
