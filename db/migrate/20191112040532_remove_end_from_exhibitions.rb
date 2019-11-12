class RemoveEndFromExhibitions < ActiveRecord::Migration[6.0]
  def change

    remove_column :exhibitions, :end, :datetime
  end
end
