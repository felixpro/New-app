# frozen_string_literal: true

class AddCostToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :cost, :string
  end
end
