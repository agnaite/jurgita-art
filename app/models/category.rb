class Category < ApplicationRecord
  has_many :paintings, dependent: :destroy

  validates :name, presence: true
  before_save :downcase_fields

  private

    def downcase_fields
      self.name.downcase!
    end
end
