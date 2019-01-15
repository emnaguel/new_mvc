# frozen_string_literal: true

class AddCategoryToCategorizations < ActiveRecord::Migration[5.2]
  def change
    add_reference :categorizations, :category, foreign_key: true
  end
end
