class Order < ApplicationRecord
  attr_accessor :token
  belongs_to :user
  belongs_to :item
  has_one :address
  # validates :price, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 300, less_than_or_equal_to: 9999999, message: "is invalid"}
  # validates :token, presence: true
end
