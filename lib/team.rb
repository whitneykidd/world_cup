class Team
  attr_reader :country, :eliminated

  def initialize(country, eliminated = false)
    @country = country
    @eliminated = eliminated
  end

  def eliminated?
    @eliminated
  end


  def eliminated
    @eliminated = true
  end
end
