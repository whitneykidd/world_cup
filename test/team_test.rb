require 'minitest/autorun'
require 'minitest/pride'
require './lib/player'
require './lib/team'

class TeamTest < Minitest::Test
  def test_it_exists
    team = Team.new("France")
    assert_instance_of Team, team
  end

  def test_it_has_a_country
    team = Team.new("France")
    assert_equal "France", team.country
  end

  def test_it_has_been_eliminated
    team = Team.new("France")
    assert_equal false, team.eliminated?

    team.eliminated
    assert_equal true, team.eliminated?
  end

  def test_it_starts_without_players
    team = Team.new("France")
    assert_equal [], team.players
  end

  def test_it_can_add_players
    team = Team.new("France")
    mbappe = Player.new({name: "Kylian Mbappe", position: "forward"})
    pogba = Player.new({name: "Paul Pogba", position: "midfielder"})

    team.add_player(mbappe)
    team.add_player(pogba)
    assert_equal [mbappe, pogba], team.players
  end

  def test_it_can_sort_players_by_position
    team = Team.new("France")
    mbappe = Player.new({name: "Kylian Mbappe", position: "forward"})
    pogba = Player.new({name: "Paul Pogba", position: "midfielder"})

    team.add_player(mbappe)
    team.add_player(pogba)
    
    team.players_by_position("midfielder")
    assert_equal [pogba], team.players_by_position("midfielder")

    team.players_by_position("forward")
    assert_equal [mbappe], team.players_by_position("forward")
  end
end
