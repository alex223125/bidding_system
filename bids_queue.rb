require 'singleton'

class BidsQueue

  include Singleton

  attr_reader :queue

  def initialize
    @queue = []
  end

  def find_of_create(bid)
    target_bid = find(bid)
    if target_bid.is_a?(Bid)
      target_bid
    else
      add(bid)
      bid
    end
  end

  def find(bid)
    @queue.select { |queue_bid| queue_bid.agent.object_id == bid.agent.object_id }.first
  end

  def add(bid)
    @queue << bid
  end

  def highest_bid_value
    @queue.map {|queue_bid| queue_bid.amount}.max
  end

  def remove(bid)
    @queue.delete(bid)
  end

  def all_bids_are_equal?
    @queue.map {|queue_bid| queue_bid.amount}.uniq.count == 1
  end

  def bid_by_agent(agent)
    @queue.select { |queue_bid| queue_bid.agent.object_id == agent.object_id }.first
  end

end
