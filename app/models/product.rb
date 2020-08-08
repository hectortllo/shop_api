class Product < ApplicationRecord
  belongs_to :type_product
  belongs_to :presentation_product
  has_many :order_details
  has_many :orders, through: :order_details
end
