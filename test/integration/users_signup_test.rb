require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest
  test 'signup with invalid information' do
    get signup_path
    assert_no_difference 'User.count' do
      post signup_path, params: { user: { name: '',
                                          email: '',
                                          password: '',
                                          password_confirmation: '' } }
    end
  end

  test 'signup with valid information' do
    get signup_path
    assert_difference 'User.count', 1 do
      post signup_path, params: { user: {
                                  name: 'fake_user',
                                  email: 'fake_user@gmail.com',
                                  password: '123456',
                                  password_confirmation: '123456' } }
    end
    follow_redirect!
    assert is_logged_in?
  end
end
