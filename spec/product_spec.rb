
require 'rails_helper'


describe Product do

  context "when the product has comments" do
    let(:product) {Product.create(name: "Santa Cruz", description: "ormtastic 4 will require Rails 4.1 and Ruby 2.0 minimum; Formtastic 3 requires ... with a basic form in place (4 lines), then go back to add in more detail if you need it.", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4H5hPnaSC0xj7xtUKJ9k68HB-pXPlon3H3VPula6R5lTSeKwgxg",price:250, colour: "red" )
} # Creating a new product
    let(:user) {User.create!(email:"felixpujols007@gmail.com",password:"4565641654")}

    before do
      product.comments.create!(rating: 1, user: user, body: "Awful bike!")
      product.comments.create!(rating: 3, user: user, body: "Ok bike!")
      product.comments.create!(rating: 5, user: user, body: "Great bike!")
    end

    it "returns the average rating of all comments" do
        expect(product.average_rating).to eq 3
     end

     it "is not valid without a name" do
       expect(Product.new(description: "Nice bike")).not_to be_valid # Creting an invalid product to proof
      end

  end

end
