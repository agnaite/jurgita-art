class CreateExhibitions < ActiveRecord::Migration[6.0]
  def change
    create_table :exhibitions do |t|
      t.datetime :start
      t.datetime :end
      t.string :name
      t.string :location

      t.timestamps
    end
  end
end
