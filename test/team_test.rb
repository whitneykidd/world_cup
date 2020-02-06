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

end
