class Product < ApplicationRecord
  validates :name, presence: true

  belongs_to :profile
  belongs_to :company
end
