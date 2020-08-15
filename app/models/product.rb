# == Schema Information
#
# Table name: products
#
#  id                      :bigint           not null, primary key
#  name                    :string
#  price                   :float
#  quantity                :float
#  type_product_id         :bigint           not null
#  presentation_product_id :bigint           not null
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#  available               :boolean          default(FALSE)
#  image_product           :string
#  description             :text
#
class Product < ApplicationRecord
  belongs_to :type_product
  belongs_to :presentation_product
  has_many :order_details
  has_many :orders, through: :order_details

  validates :name, :price, :quantity, :type_product_id, :presentation_product_id, presence: true

  mount_uploader :image_product, ProductUploader

  def self.only_candies
    where(type_product_id: 1)
  end

  def self.only_food
    where(type_product_id: 2)
  end
end
