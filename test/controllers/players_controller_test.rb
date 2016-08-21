require 'test_helper'

class PlayersControllerTest < ActionDispatch::IntegrationTest

  setup do
    @player = players(:spampi)
  end

  test 'should show a player' do
    get player_url(@player)
    assert_response :success
  end
end
