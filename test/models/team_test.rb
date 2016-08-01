require 'test_helper'

class TeamTest < ActiveSupport::TestCase
  test "should not save team without name" do
    team = Team.new
    team.name = ''
    team.stadium = 'San Marcellino'
    team.address = 'Via Chiantigiana'
    team.telephone = '055/606480'
    team.pitch_type = 'Sintetico'
    assert_not team.save, 'Saved team without name'
  end

  test "should not save team without stadium" do
    team = Team.new
    team.name = 'Girone Calcio'
    team.stadium = ''
    team.address = 'Via Chiantigiana'
    team.telephone = '055/606480'
    team.pitch_type = 'Sintetico'
    assert_not team.save, 'Saved team without stadium'
  end

  test "should not save team without address" do
    team = Team.new
    team.name = 'Girone Calcio'
    team.stadium = 'San Marcellino'
    team.address = nil
    team.telephone = '055/606480'
    team.pitch_type = 'Sintetico'
    assert_not team.save, 'Saved team without address'
  end

  test "should not save team without telephone" do
    team = Team.new
    team.name = 'Girone Calcio'
    team.stadium = 'San Marcellino'
    team.address = 'Via Chiantigiana'
    team.telephone = ''
    team.pitch_type = 'Sintetico'
    assert_not team.save, 'Saved team without telephone'
  end

  test "should not save team without pitch type" do
    team = Team.new
    team.name = 'Girone Calcio'
    team.stadium = 'San Marcellino'
    team.address = 'Via Chiantigiana'
    team.telephone = '055/606480'
    team.pitch_type = ''
    assert_not team.save, 'Saved team without pitch type'
  end

end
