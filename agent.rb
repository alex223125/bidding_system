class Agent

  DEFAULT_BID_VALUE = 0.freeze

  def initialize(name)
    @name = name
  end

  def get_bid_increase
    last_bid + rand(5)
  end

  private

  def last_bid
    BidsQueue.instance.bid_by_agent(self)&.amount || DEFAULT_BID_VALUE
  end
end
