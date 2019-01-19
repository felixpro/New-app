require 'rails_helper'


describe Comment do
  context "When the comment is submit" do

       it "Return error if the body, user or product is empty" do
         expect(Comment.create(rating: 2)).not_to be_valid
       end

    end
end
