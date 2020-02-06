require 'minitest/autorun'
require 'minitest/pride'
require './lib/player'

class PlayerTest < Minitest::Test
  def test_it_exists
    player = Player.new({name: "Luka Modric", position: "midfielder"})
    require "pry"; binding.pry
    assert_instance_of Player, player
  end
end
