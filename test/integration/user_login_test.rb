require 'test_helper'

class UserLoginTest < ActionDispatch::IntegrationTest
  test "registered user can login" do
    login_user!
  end
end
