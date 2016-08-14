require 'test_helper'

class PlayerTest < ActiveSupport::TestCase
  test 'should not save player without name' do
    player = Player.new
    player.name = ''
    player.surname = 'Spampinato'
    player.birthday = Date.new(1991, 2, 16)
    player.role = 'Difensore'
    player.shirt_number = 6
    player.preferred_foot = 'Dx'
    player.team = teams(:girone)
    assert_not player.save, 'Saved player without name'
  end

  test 'should not save player without surname' do
    player = Player.new
    player.name = 'Francesco'
    player.surname = nil
    player.birthday = Date.new(1991, 2, 16)
    player.role = 'Difensore'
    player.shirt_number = 6
    player.preferred_foot = 'Dx'
    player.team = teams(:girone)
    assert_not player.save, 'Saved player without surname'
  end

  test 'should not save player without birthday' do
    player = Player.new
    player.name = 'Francesco'
    player.surname = 'Spampinato'
    player.birthday = nil
    player.role = 'Difensore'
    player.shirt_number = 6
    player.preferred_foot = 'Dx'
    player.team = teams(:girone)
    assert_not player.save, 'Saved player without birthday'
  end

  test 'should not save player without role' do
    player = Player.new
    player.name = 'Francesco'
    player.surname = 'Spampinato'
    player.birthday = Date.new(1991, 2, 16)
    player.role = ''
    player.shirt_number = 6
    player.preferred_foot = 'Dx'
    player.team = teams(:girone)
    assert_not player.save, 'Saved player without role'
  end

  test 'should not save player without shirt number' do
    player = Player.new
    player.name = 'Francesco'
    player.surname = 'Spampinato'
    player.birthday = Date.new(1991, 2, 16)
    player.role = 'Difensore'
    player.shirt_number = nil
    player.preferred_foot = 'Dx'
    player.team = teams(:girone)
    assert_not player.save, 'Saved player without shirt number'
  end

  test 'should not save player without preferred foot' do
    player = Player.new
    player.name = 'Francesco'
    player.surname = 'Spampinato'
    player.birthday = Date.new(1991, 2, 16)
    player.role = 'Difensore'
    player.shirt_number = 6
    player.preferred_foot = nil
    player.team = teams(:girone)
    assert_not player.save, 'Saved player without preferred foot'
  end

  test 'should not save player without team' do
    player = Player.new
    player.name = 'Francesco'
    player.surname = 'Spampinato'
    player.birthday = Date.new(1991, 2, 16)
    player.role = 'Difensore'
    player.shirt_number = 6
    player.preferred_foot = 'Dx'
    player.team = nil
    assert_not player.save, 'Saved player without team'
  end

  test 'should save player with all required fields' do
    player = Player.new
    player.name = 'Francesco'
    player.surname = 'Spampinato'
    player.birthday = Date.new(1991, 2, 16)
    player.role = 'Difensore'
    player.shirt_number = 6
    player.preferred_foot = 'Dx'
    player.team = teams(:girone)
    assert player.save, 'Not saved player with all required fields'
  end
end
