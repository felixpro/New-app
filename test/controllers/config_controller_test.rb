# frozen_string_literal: true

require 'test_helper'

class ConfigControllerTest < ActionDispatch::IntegrationTest
  test 'should get root' do
    get config_root_url
    assert_response :success
  end
end
