# == Schema Information
#
# Table name: presentation_products
#
#  id                :bigint           not null, primary key
#  name_presentation :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#
class PresentationProduct < ApplicationRecord
  has_many :products

  validates :name_presentation, presence: true
end
