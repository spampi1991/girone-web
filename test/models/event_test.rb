require 'test_helper'

class EventTest < ActiveSupport::TestCase

  setup do
    @event = Event.new
  end

  test 'should not save event without local team' do
     @event.away_team = teams(:quona)
     @event.local_team = nil
     @event.season = seasons(:current_season)
     @event.event_date = Date.new
     assert_not @event.save, 'Saved event without local team'
  end

  test 'should not save event without away team' do
    @event.away_team = nil
    @event.local_team = teams(:quona)
    @event.season = seasons(:current_season)
    @event.event_date = Date.new
    assert_not @event.save, 'Saved event without away team'
  end

  test 'should not save event without season' do
    @event.away_team = teams(:girone)
    @event.local_team = teams(:quona)
    @event.season = nil
    @event.event_date = Date.new
    assert_not @event.save, 'Saved event without season'
  end

  test 'should not save event without event date' do
    @event.away_team = teams(:girone)
    @event.local_team = teams(:quona)
    @event.season = seasons(:current_season)
    @event.event_date = nil
    assert_not @event.save, 'Saved event without event date'
  end

  test 'should save event with all required fields' do
    @event.away_team = teams(:girone)
    @event.local_team = teams(:quona)
    @event.season = seasons(:current_season)
    @event.event_date = Date.new
    assert @event.save, 'Not Saved event with all required fields'
  end

  teardown do
    puts @event.errors.messages
  end

end
