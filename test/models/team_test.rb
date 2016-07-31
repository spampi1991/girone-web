require 'test_helper'

class TeamTest < ActiveSupport::TestCase
  test "should not save team without name" do
    team = Team.new
    team.name = ''
    team.stadium = 'San Marcellino'
    team.address = 'Via Chiantigiana'
    team.telephone = '055/606480'
    assert_not team.save, 'Saved team without name'
  end

  test "should not save team without stadium" do
    team = Team.new
    team.name = 'Girone Calcio'
    team.stadium = ''
    team.address = 'Via Chiantigiana'
    team.telephone = '055/606480'
    assert_not team.save, 'Saved team without stadium'
  end

  test "should not save team without address" do
    team = Team.new
    team.name = 'Girone Calcio'
    team.stadium = 'San Marcellino'
    team.address = nil
    team.telephone = '055/606480'
    assert_not team.save, 'Saved team without address'
  end

  test "should not save team without telephone" do
    team = Team.new
    team.name = 'Girone Calcio'
    team.stadium = 'San Marcellino'
    team.address = 'Via Chiantigiana'
    team.telephone = ''
    assert_not team.save, 'Saved team without foundation telephone'
  end

end
