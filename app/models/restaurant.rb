class Restaurant < ApplicationRecord
  @categories = %w[chinese italian japanese french belgian]

  has_many :reviews, dependent: :destroy

  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: @categories }

  class << self
    attr_reader :categories
  end
end
