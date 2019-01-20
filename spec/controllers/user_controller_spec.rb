require 'rails_helper'

describe UsersController, type: :controller do
  let(:user) { User.create!(email: 'peter@example.com', password: '1234567890') }
  let(:secondUser) { User.create!(email: 'felix@example.com', password: '4568161314') }

  describe 'GET #show' do
    context 'when a user is logged in' do
      before do
        sign_in user
      end

      it 'loads correct user details' do
        get :show, params: { id: user.id }
        expect(response).to have_http_status(200)
        expect(assigns(:user)).to eq user
      end

      it 'when try to get show page of the second user' do
        get :show, params: { id: secondUser.id }
        expect(response).to redirect_to(root_path)
      end
    end

    context 'when a user is not logged in' do
      it 'redirects to login' do
        get :show, params: { id: user.id }
        expect(response).to redirect_to new_user_session_path
      end
    end
  end
end
