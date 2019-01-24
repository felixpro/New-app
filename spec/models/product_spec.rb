
require 'rails_helper'


describe Product do
before do
  @user = FactoryBot.create(:user)
  @product = FactoryBot.create(:product)
end
  context "when the product has comments" do

    before do # Brefore create the product, cretae 3 comments, this code run before the first context
      @product.comments.create!(rating: 1, user: @user, body: "Awful bike!")
      @product.comments.create!(rating: 3, user: @user, body: "Ok bike!")
      @product.comments.create!(rating: 5, user: @user, body: "Great bike!")
    end

    it "Returns the average rating of all comments" do
        expect(@product.average_rating).to eq 3
     end

     it "Is not valid without a name" do
       expect(Product.new(description: "Nice bike")).not_to be_valid # Creting an invalid product to proof
      end

  end

end
