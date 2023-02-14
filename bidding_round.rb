class BiddingRound

  def initialize(bids)
    @bids = bids
  end

  def start
    @bids.each do |new_bid|
      process(new_bid)
    end
  end

  private

  def process(new_bid)
    bid = find_or_create(new_bid)
    if proceed_to_next_round?(bid)
      # do nothing
    else
      withdraw_(bid.agent)
      remove_(bid)
    end
  end

  def proceed_to_next_round?(bid)
    if bid.amount >= highest_bid_value
      true
    elsif bid.amount < highest_bid_value
      false
    end
  end

  def remove_(bid)
    puts "Bid #{bid.inspect} removed from BidsQueue by rules"
    BidsQueue.instance.remove(bid)
  end

  def withdraw_(agent)
    puts "Agent #{agent.inspect} withdrawn from bidding by rules"
    AgentsQueue.instance.remove(agent)
  end

  def highest_bid_value
    BidsQueue.instance.highest_bid_value
  end

  def find_or_create(bid)
    BidsQueue.instance.find_of_create(bid)
  end

end