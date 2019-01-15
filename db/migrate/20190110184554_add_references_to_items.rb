# frozen_string_literal: true

class AddReferencesToItems < ActiveRecord::Migration[5.2]
  def change
    add_reference :items, :category, foreign_key: true
  end
end
