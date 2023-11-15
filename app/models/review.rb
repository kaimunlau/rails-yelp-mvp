class Review < ApplicationRecord
  @rating_range = (0..5)

  belongs_to :restaurant

  validates :content, presence: true
  validates :rating, presence: true, numericality: { only_integer: true }, inclusion: { in: @rating_range }

  class << self
    attr_reader :rating_range
  end
end
