class CreateExhibitionImages < ActiveRecord::Migration[6.0]
  def change
    create_table :exhibition_images do |t|
      t.string :caption

      t.timestamps
    end
  end
end
