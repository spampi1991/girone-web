require 'test_helper'

class RoleTest < ActiveSupport::TestCase

  setup do
    @role = Role.new
  end

  test 'should not save role without type' do
    @role.type = ''
    assert_not @role.save, 'Saved role without type'
  end

  test 'should save role with all required fields' do
    @role.type = 'Admin'
    assert @role.save, 'Not saved role with all required fields'
  end

  teardown do
    puts @role.errors.messages
  end

end
