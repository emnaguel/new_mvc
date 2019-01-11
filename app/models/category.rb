class Category < ApplicationRecord
  has_many :names
  has_many :items,  through: :names

  validates :name, presence: true, length: { minimum: 5 }
  validates :description, presence: true
end
