
require 'rails_helper'


describe User do
  context "When the user is trying to login" do

    it "Return true if user doesn't has the complete info" do
      expect(User.create(email:"felixpujols007@gmail.com",password:"1")).not_to be_valid
    end

  end
end
