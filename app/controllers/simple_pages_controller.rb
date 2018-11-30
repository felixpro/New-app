class SimplePagesController < ApplicationController
  def about
  end

  def landing_page
    @products = Product.all
  end

end
