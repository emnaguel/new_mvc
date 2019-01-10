class Category < ApplicationRecord
  has_many :items,  through: :names
end
