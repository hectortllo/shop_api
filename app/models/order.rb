class Order < ApplicationRecord
  belongs_to :user
  has_many :order_details
  has_many :products, through: :order_details

  validates :total, presence: true,
                      numericality: { greater_than_or_equal_to: 0 }
  
  validates :user_id, presence: true
end
