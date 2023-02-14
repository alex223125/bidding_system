require 'singleton'

class AgentsQueue

  include Singleton

  attr_accessor :queue

  def initialize
    @queue = []
  end

  def remove(agent)
    @queue.delete(agent)
  end

end