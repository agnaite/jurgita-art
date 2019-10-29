class Painting < ApplicationRecord
  belongs_to :category
  has_one_attached :image

  validates :title, :width, :height, :medium, :price, presence: true

  validates :price, :width, :height, numericality: true

  validate :only_one_can_be_checked

  private

    def only_one_can_be_checked
      if sold and new
        errors.add("only one", "label can be checked")
      end
    end
end
