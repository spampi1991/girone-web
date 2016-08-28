require 'test_helper'

class UsersLoginTest < ActionDispatch::IntegrationTest

  setup do
    @user = users(:francesco)
  end

  test 'login with invalid information' do
    get login_path
    assert_response :success
    post login_path, params: { session: { email: '', password: '' } }
    assert_not flash.empty?
    get root_path
    assert flash.empty?
  end

  test 'login with valid information' do
    get login_path
    assert_response :success
    post login_path, params: { session: { email: 'francesco@gmail.com', password: '123456789' } }
    assert_redirected_to @user
  end

  test 'login with valid information followed by logout' do
    get login_path
    assert_response :success
    post login_path, params: { session: { email: 'francesco@gmail.com', password: '123456789' } }
    assert is_logged_in?
    assert_redirected_to @user
    follow_redirect!
    delete logout_path
    assert_not is_logged_in?
    assert_redirected_to root_url
    follow_redirect!
  end

end
