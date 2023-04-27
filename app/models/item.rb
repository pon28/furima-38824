class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  belongs_to :user
  has_one_attached :image

  belongs_to :category

  validates :name, presence: true
  validates :description, presence: true
  validates :category_id, presence: true, numericality: { other_than: 1, message: "can't be blank"}
  validates :status_id, presence: true
  validates :shipping_cost_id, presence: true 
  validates :prefecture_id, presence: true 
  validates :shipping_day_id, presence: true
  validates :price, presence: true
  validates :user, presence: true

end
