require 'test_helper'

class UserCreationTest <ActionDispatch::IntegrationTest
  test "a user can be created" do
    visit new_user_path
    fill_in "Username", with: "Adam"
    fill_in "Password", with: "asdf"
    click_button "Create Account"

    assert page.has_content?("Welcome, Adam!")
  end
end