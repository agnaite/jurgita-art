class Category < ApplicationRecord
  has_many :paintings, dependent: :destroy

  validates :name, presence: true
  before_save :downcase_fields, :strip_whitespace

  private

  def downcase_fields
    self.name.downcase!
  end

  def strip_whitespace
    self.name.strip
  end
end
