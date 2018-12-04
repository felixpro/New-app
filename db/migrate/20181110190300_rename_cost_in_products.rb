# frozen_string_literal: true

class RenameCostInProducts < ActiveRecord::Migration[5.2]
  def change
    rename_column :products, :cost, :price
  end
end
