class Painting < ApplicationRecord
  belongs_to :category
  has_one_attached :image

  validates :title, presence: true
end
