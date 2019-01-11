class Category < ApplicationRecord
  has_many :names
  has_many :items,  through: :names
end
