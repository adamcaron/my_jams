require 'test_helper'

class AdminUsersTest < ActionDispatch::IntegrationTest
  test "logged in admin sees user index" do
    admin = User.create(username: "admin", password: "admin", role: 1)
    ApplicationController.any_instance.stubs(:current_user).returns(admin)
    visit admin_users_path
    assert page.has_content?("All Users")
  end

  test "default user does not see admin users index" do
    user = User.create(username: "default_user",
                        password: "cheese",
                        role: 0)
    ApplicationController.any_instance.stubs(:current_user).returns(user)
    visit admin_users_path
    refute page.has_content?("All Users")
    assert page.has_content?("The page you were looking for doesn't exist.")
  end
end