require 'test_helper'

class UserTest < ActiveSupport::TestCase

  setup do
    @user = User.new
  end

  test 'should save user with all required fields' do
    @user.username = '__guice__'
    @user.email = 'example@gmail.com'
    @user.password = '123456789'
    @user.create_time = DateTime.new
    assert @user.save, 'Not saved user with all required fields'
  end

  test 'should not save user without name' do
    @user.username = nil
    @user.email = 'example@gmail.com'
    @user.password = '123456789'
    @user.create_time = DateTime.new
    assert_not @user.save, 'Saved user without username'
  end

  test 'should not save user without email' do
    @user.username = '__guice__'
    @user.email = ''
    @user.password = '123456789'
    @user.create_time = DateTime.new
    assert_not @user.save, 'Saved user without email'
  end

  test 'should not save user without password' do
    @user.username = '__guice__'
    @user.email = 'example@gmail.com'
    @user.password = nil
    @user.create_time = DateTime.new
    assert_not @user.save, 'Saved user without password'
  end

  test 'should not save user without create time' do
    @user.username = '__guice__'
    @user.email = 'example@gmail.com'
    @user.password = '123456789'
    @user.create_time = nil
    assert_not @user.save, 'Saved user without create_time'
  end

  teardown do
    puts @user.errors.messages
  end

end
