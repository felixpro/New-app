require 'rails_helper'

describe CommentsController, type: :controller do
  let(:user) { User.create!(email: 'felixpujols007@gmail.com', password: 'f23675641997') }
  let(:product) { Product.create!(name: 'Mountain-road', description: 'ofyukjtastic 4 will require Rails 4.1 and Ruby 2.0 minimum; Formtastic 3 requires ... with a basic form in place (4 lines), then go back to add in more detail if you need it.', image_url: 'https://cdn.shopify.com/s/files/1/1803/3819/products/2757888_480x480.jpg?v=1531977738', price: 350, colour: 'Green') }
  let(:newComment){product.comments.new(rating: 3, user: user, body: 'Ok bike!')}

  context 'GET #commentNew' do
    before do
      sign_in user
    end

    it 'Comment is valid' do
      expect(product.comments.new(rating: 3, user: user, body: 'Ok bike!')).to be_valid # Creting an invalid product to proof
    end

    it 'The rating is a Numeric' do
      expect(newComment.rating).to be_kind_of(Numeric)
    end

  end
end
