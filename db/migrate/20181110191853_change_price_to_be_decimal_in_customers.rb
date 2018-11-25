class ChangePriceToBeDecimalInCustomers < ActiveRecord::Migration[5.2]

  def change
  change_column :products, :price, 'numeric USING CAST(price AS numeric)'
end
end
