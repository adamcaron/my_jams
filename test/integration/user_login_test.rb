require 'test_helper'

class UserLoginTest < ActionDispatch::IntegrationTest
  test "registered user can login" do
    user = User.create(username: "Adam", password: "asdf")

    visit login_path
    fill_in "Username", with: user.username
    fill_in "Password", with: "asdf"
    click_button "Login"

    assert page.has_content?("Welcome, Adam!")
  end
end
