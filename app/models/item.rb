class Item < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  validates :name, presence: true
  validates :description, presence: true
  validates :category_id, presence: true
  validates :status_id, presence: true
  validates :shipping_cost_id, presence: true 
  validates :prefecture_id, presence: true 
  validates :shipping_day_id, presence: true
  validates :price, presence: true
  validates :user, presence: true
end
