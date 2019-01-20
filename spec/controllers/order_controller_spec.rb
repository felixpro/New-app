require 'rails_helper'

describe OrdersController, type: :controller do
 let(:user){User.create(email: "felixpujols007@gmail.com", password: "f236756419997")}

  context 'GET, #index' do
    it 'Give a 302 status' do
      get :index
      expect(response).to have_http_status(302)
    end
  end

  context 'GET, #index' do

    before do
      sign_in user
    end

    it 'render the index page' do
      get :index
      expect(response).to have_http_status(200)
    end
  end

end
