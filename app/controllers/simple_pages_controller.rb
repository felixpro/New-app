# frozen_string_literal: true
class SimplePagesController < ApplicationController
  def about
    
  end

  def landing_page
    @products = Product.limit(3)
  end
end
