class Bid

  DEFAULT_AMOUNT = 0.freeze

  attr_reader :agent, :amount

  def initialize(agent, amount)
    @agent = agent
    @amount = amount
  end

  def update(amount)
    @amount += amount
  end

end
