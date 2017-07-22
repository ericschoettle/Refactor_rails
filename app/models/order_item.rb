class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :product

  validates :quantity, numericality: { greater_than: 0, less_than_or_equal_to: 10 }, presence: true
end
