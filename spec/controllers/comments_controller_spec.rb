require 'rails_helper'

describe CommentsController, type: :controller do

before do
  @product = FactoryBot.create(:product)
  @user = FactoryBot.create(:user)
end

  let(:newComment){@product.comments.new(rating: 3, user: @user, body: 'Ok bike!')}

  context 'GET #commentNew' do
    before do
      sign_in @user
    end

    it 'Comment is valid' do
      expect(@product.comments.new(rating: 3, user: @user, body: 'Ok bike!')).to be_valid # Creting an invalid product to proof
    end

    it 'The rating is a Numeric' do
      expect(newComment.rating).to be_kind_of(Numeric)
    end

  end
end
