class Category < ApplicationRecord
  has_many :paintings, dependent: :destroy

  validates :name, presence: true
end
