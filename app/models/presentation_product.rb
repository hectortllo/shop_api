class PresentationProduct < ApplicationRecord
  has_many :products

  validates :name_presentation, presence: true
end
