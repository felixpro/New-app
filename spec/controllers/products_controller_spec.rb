require 'rails_helper'

describe ProductsController, type: :controller do
  let(:user) { User.create!(email: 'peter@example.com', password: '1234567890') }

  context 'GET #index' do
    it 'return a 200 status' do
      get :index
      expect(response).to have_http_status(200)
    end
  end

  context 'post #create' do
    it 'Return a 302 status' do
      expect(Product.create(name: 'Mountain-road', description: 'ofyukjtastic ', image_url: 'https://cdn.shopify.com/s/files/1/1803/3819/products/2757888_480x480.jpg?v=1531977738', price: 350, colour: 'Green')).not_to be_valid
    end
  end

  context 'post #create' do
    before do
      sign_in user
    end
    it 'Return a 302 status' do
      expect(Product.create(name: 'Mountain-road', description: 'ofyukjtastic ', image_url: 'https://cdn.shopify.com/s/files/1/1803/3819/products/2757888_480x480.jpg?v=1531977738', price: 350, colour: 'Green')).not_to be_valid
    end
  end
end
