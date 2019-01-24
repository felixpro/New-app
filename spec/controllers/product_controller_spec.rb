require 'rails_helper'

describe ProductsController, type: :controller do
  before do
    @product = FactoryBot.create(:product)
    @user = FactoryBot.create(:user)
  end

  describe 'GET #index' do
    it 'renders products index page' do
      get :index
      expect(response).to be_ok
      expect(response).to render_template('index')
    end
  end

  describe 'GET #new' do
    it 'Return a 302 status' do
      get :new, params: { id: @product }
      expect(response).not_to be_ok
      expect(response).to redirect_to new_user_session_path
    end

    context do
      before do
        sign_in @user
      end
      it 'Return a 200 status' do
        get :new, params: { id: @product }
        expect(response).to be_ok
      end
    end
  end

end
