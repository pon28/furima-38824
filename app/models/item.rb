class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  belongs_to :user
  has_one_attached :image

  belongs_to :category
  belongs_to :status
  belongs_to :shipping_cost

  validates :name, presence: true
  validates :description, presence: true
  validates :category_id, presence: true, numericality: { other_than: 1, message: "can't be blank"}
  validates :status_id, presence: true, numericality: { other_than: 1, message: "can't be blank"}
  validates :shipping_cost_id, presence: true, numericality: { other_than: 1, message: "can't be blank"} 
  validates :prefecture_id, presence: true 
  validates :shipping_day_id, presence: true
  validates :price, presence: true
  validates :user, presence: true

end
