require 'test_helper'

class UserTest < ActiveSupport::TestCase

  setup do
    @empty_user = User.new
  end

  test 'should save user with all required fields' do
    @empty_user.name = '__guice__'
    @empty_user.email = 'example@gmail.com'
    @empty_user.password = '123456789'
    assert @empty_user.save, 'Not saved user with all required fields'
  end

  test 'should not save user without name' do
    @empty_user.name = nil
    @empty_user.email = 'example@gmail.com'
    @empty_user.password = '123456789'
    assert_not @empty_user.save, 'Saved user without username'
  end

  test 'should not save user without email' do
    @empty_user.name = '__guice__'
    @empty_user.email = ''
    @empty_user.password = '123456789'
    assert_not @empty_user.save, 'Saved user without email'
  end

  test 'should not save user without password' do
    @empty_user.name = '__guice__'
    @empty_user.email = 'example@gmail.com'
    @empty_user.password = nil
    assert_not @empty_user.save, 'Saved user without password'
  end

  test 'user should not be valid with different password and confirmation password' do
    @empty_user.name = '__guice__'
    @empty_user.email = 'example@gmail.com'
    @empty_user.password = '123'
    @empty_user.password_confirmation = '321'
    assert_not @empty_user.valid?, 'User is valid with different password and confirmation password'
  end

end
