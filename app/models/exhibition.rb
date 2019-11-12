class Exhibition < ApplicationRecord
  validates :name, :location, :start, presence: true
  before_save :downcase_fields, :strip_whitespace

  private
  def downcase_fields
    self.name.downcase!
  end

  def strip_whitespace
    self.name.strip!
    self.location.strip!
  end

end
