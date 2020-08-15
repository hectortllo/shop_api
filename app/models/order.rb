# == Schema Information
#
# Table name: orders
#
#  id         :bigint           not null, primary key
#  total      :float
#  user_id    :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Order < ApplicationRecord
  belongs_to :user
  has_many :order_details
  has_many :products, through: :order_details

  validates :total, presence: true,
                      numericality: { greater_than_or_equal_to: 0 }
  
  validates :user_id, presence: true

  def set_total!
    self.total = products.map(&:price).sum
  end
end
