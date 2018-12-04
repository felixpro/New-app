# frozen_string_literal: true

require 'test_helper'

class SimplePagesControllerTest < ActionDispatch::IntegrationTest
  test 'should get about' do
    get simple_pages_about_url
    assert_response :success
  end
end
