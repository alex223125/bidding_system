require './agent'
require './agents_queue'
require './bid'
require './bidding'
require './bidding_round'
require './bids_queue'

# System Emulation

# 1: create agents
first_agent = Agent.new("aaa")
second_agent = Agent.new("bbb")
third_agent = Agent.new("ccc")
fourth_agent = Agent.new("sss")
fifth_agent = Agent.new("nnn")
sixth_agent = Agent.new("mmm")

# 2: get agents to queue
agents_queue = AgentsQueue.instance
agents_queue.queue << first_agent
agents_queue.queue << second_agent
agents_queue.queue << third_agent
agents_queue.queue << fourth_agent
agents_queue.queue << fifth_agent
agents_queue.queue << sixth_agent

# 3: create initial bids
bids = []
agents_queue.queue.each do |agent|
  bids << Bid.new(agent, agent.get_bid_increase )
end

# 4: run bidding process
bidding_process = Bidding.new(bids)
bidding_process.run



