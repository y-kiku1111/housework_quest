require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get [new][create]" do
    get users_[new][create]_url
    assert_response :success
  end

end
