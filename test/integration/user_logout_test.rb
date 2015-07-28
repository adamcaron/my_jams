require 'test_helper'

class UserLogoutTest < ActionDispatch::IntegrationTest
  test "logged in user can logout" do
    login_user!

    click_link "Logout"

    refute page.has_content?("Welcome, Adam!")
  end
end