class TypeProduct < ApplicationRecord
  has_many :products

  validates :name_type_product, presence: true
end
