# == Schema Information
#
# Table name: type_products
#
#  id                :bigint           not null, primary key
#  name_type_product :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#
class TypeProduct < ApplicationRecord
  has_many :products

  validates :name_type_product, presence: true
end
