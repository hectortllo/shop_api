# == Schema Information
#
# Table name: order_details
#
#  id         :bigint           not null, primary key
#  product_id :bigint           not null
#  order_id   :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class OrderDetail < ApplicationRecord
  belongs_to :product
  belongs_to :order
end
