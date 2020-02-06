class Team
  attr_reader :country, :eliminated, :players

  def initialize(country, eliminated = false)
    @country = country
    @eliminated = eliminated
    @players = []
  end

  def eliminated?
    @eliminated
  end

  def eliminated
    @eliminated = true
  end

  def add_player(player)
    @players << player
  end
end
