class Product < ApplicationRecord
  belongs_to :type_product
  belongs_to :presentation_product
  has_many :order_details
  has_many :orders, through: :order_details

  validates :name, :price, :quantity, :type_product_id, :presentation_product_id, presence: true

  def self.only_candies
    where(type_product_id: 1)
  end

  def self.only_food
    where(type_product_id: 2)
  end
end
