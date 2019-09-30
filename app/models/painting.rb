class Painting < ApplicationRecord
  belongs_to :category
  has_one_attached :image

  validates :title, :size, :medium, :price, presence: true

  validates :price, numericality: true
end
