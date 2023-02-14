class Bidding

  STARTING_ROUND = 1.freeze

  def initialize(bids)
    @round = STARTING_ROUND
    @bids = bids
  end

  def run
    process_bids

    puts "Winners who's going to next bidding process: #{bids_from_queue.inspect}"
  end

  private

  def process_bids
    return puts "No more rounds required, final condition of bidding circle meet" unless is_new_round_required?

    refresh_bids_for_new_round unless @round == STARTING_ROUND
    message_that_round_started
    start_round
    message_that_round_ended
    update_round_number

    process_bids
  end

  def start_round
    bidding_round = BiddingRound.new(@bids)
    bidding_round.start
  end


  def is_new_round_required?
    if BidsQueue.instance.all_bids_are_equal?
      false
    else
      true
    end
  end

  def refresh_bids_for_new_round
    @bids = bids_from_queue
    @bids.each do |bid|
      new_bid_value = bid.agent.get_bid_increase
      bid.update(new_bid_value)
    end
    puts "Bids got updated for a new round: #{@bids.inspect}"
  end

  def bids_from_queue
    BidsQueue.instance.queue
  end

  def update_round_number
    @round += 1
  end

  def message_that_round_started
    puts "########### ROUND BEGIN ############### ROUND BEGIN ################## ROUND BEGIN ######################"
    puts "Round №#{@round} started!"
    puts "Bids for round №#{@round} are: #{@bids.inspect}"
  end

  def message_that_round_ended
    puts "Round №#{@round} finished!"
    puts "Bids which go to the next bidding round are: #{bids_from_queue.inspect}"
    puts "########### ROUND END ############### ROUND END ################## ROUND END #############################"
  end

end