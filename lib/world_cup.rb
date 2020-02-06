class WorldCup
  attr_reader :year, :teams
  def initialize(year, teams)
    @year = year
    @teams = teams
  end

  def active_players_by_position(position)

    active_teams.flat_map do |team|
      team.players_by_position(position)
    end
  end

  def active_teams
    @teams.find_all {|team| !team.eliminated?}
  end
end
