
require 'rails_helper'


describe Order do
  context "When the the user create an order" do

    it "Return false if the there is not products or user" do
      expect(Order.create(total: 45, user_id: 1, product_id:1)).not_to be_valid
    end
  end
end
