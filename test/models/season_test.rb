require 'test_helper'

class SeasonTest < ActiveSupport::TestCase

  setup do
    @season = Season.new
  end

  test 'should not save season without name' do
    @season.name = ''
    @season.year = 2016
    assert_not @season.save, 'Saved season without name'
  end

  test 'should not save season without year' do
    @season.name = '2016/2017'
    @season.year = nil
    assert_not @season.save, 'Saved season without year'
  end

  test 'should save season with all required fields' do
    @season.name = '2016/2017'
    @season.year = 2017
    assert @season.save, 'Not saved season with all required fields'
  end

  teardown do
    puts @season.errors.messages
  end

end
