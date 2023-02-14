

### Example of usage 1 (2 rounds):

    ruby run.rb

    ########### ROUND BEGIN ############### ROUND BEGIN ################## ROUND BEGIN ######################
    Round №1 started!
    Bids for round №1 are: [#<Bid:0x000055915f3380b0 @agent=#<Agent:0x000055915f338c18 @name="aaa">, @amount=2>, #<Bid:0x000055915f338060 @agent=#<Agent:0x000055915f338bc8 @name="bbb">, @amount=1>, #<Bid:0x000055915f338010 @agent=#<Agent:0x000055915f338b50 @name="ccc">, @amount=4>, #<Bid:0x000055915f5effb0 @agent=#<Agent:0x000055915f3384e8 @name="sss">, @amount=2>, #<Bid:0x000055915f5eff60 @agent=#<Agent:0x000055915f338498 @name="nnn">, @amount=3>, #<Bid:0x000055915f5eff10 @agent=#<Agent:0x000055915f338448 @name="mmm">, @amount=4>]
    Agent #<Agent:0x000055915f338bc8 @name="bbb"> withdrawn from bidding by rules
    Bid #<Bid:0x000055915f338060 @agent=#<Agent:0x000055915f338bc8 @name="bbb">, @amount=1> removed from BidsQueue by rules
    Agent #<Agent:0x000055915f3384e8 @name="sss"> withdrawn from bidding by rules
    Bid #<Bid:0x000055915f5effb0 @agent=#<Agent:0x000055915f3384e8 @name="sss">, @amount=2> removed from BidsQueue by rules
    Agent #<Agent:0x000055915f338498 @name="nnn"> withdrawn from bidding by rules
    Bid #<Bid:0x000055915f5eff60 @agent=#<Agent:0x000055915f338498 @name="nnn">, @amount=3> removed from BidsQueue by rules
    Round №1 finished!
    Bids which go to the next bidding round are: [#<Bid:0x000055915f3380b0 @agent=#<Agent:0x000055915f338c18 @name="aaa">, @amount=2>, #<Bid:0x000055915f338010 @agent=#<Agent:0x000055915f338b50 @name="ccc">, @amount=4>, #<Bid:0x000055915f5eff10 @agent=#<Agent:0x000055915f338448 @name="mmm">, @amount=4>]
    ########### ROUND END ############### ROUND END ################## ROUND END #############################
    Bids got updated for a new round: [#<Bid:0x000055915f3380b0 @agent=#<Agent:0x000055915f338c18 @name="aaa">, @amount=5>, #<Bid:0x000055915f338010 @agent=#<Agent:0x000055915f338b50 @name="ccc">, @amount=9>, #<Bid:0x000055915f5eff10 @agent=#<Agent:0x000055915f338448 @name="mmm">, @amount=8>]
    ########### ROUND BEGIN ############### ROUND BEGIN ################## ROUND BEGIN ######################
    Round №2 started!
    Bids for round №2 are: [#<Bid:0x000055915f3380b0 @agent=#<Agent:0x000055915f338c18 @name="aaa">, @amount=5>, #<Bid:0x000055915f338010 @agent=#<Agent:0x000055915f338b50 @name="ccc">, @amount=9>, #<Bid:0x000055915f5eff10 @agent=#<Agent:0x000055915f338448 @name="mmm">, @amount=8>]
    Agent #<Agent:0x000055915f338c18 @name="aaa"> withdrawn from bidding by rules
    Bid #<Bid:0x000055915f3380b0 @agent=#<Agent:0x000055915f338c18 @name="aaa">, @amount=5> removed from BidsQueue by rules
    Agent #<Agent:0x000055915f338448 @name="mmm"> withdrawn from bidding by rules
    Bid #<Bid:0x000055915f5eff10 @agent=#<Agent:0x000055915f338448 @name="mmm">, @amount=8> removed from BidsQueue by rules
    Round №2 finished!
    Bids which go to the next bidding round are: [#<Bid:0x000055915f338010 @agent=#<Agent:0x000055915f338b50 @name="ccc">, @amount=9>]
    ########### ROUND END ############### ROUND END ################## ROUND END #############################
    No more rounds required, final condition of bidding circle meet
    Winners who's going to next bidding process: [#<Bid:0x000055915f338010 @agent=#<Agent:0x000055915f338b50 @name="ccc">, @amount=9>]

### Example of usage 2 (3 rounds):

    ruby run.rb

    ########### ROUND BEGIN ############### ROUND BEGIN ################## ROUND BEGIN ######################
    Round №1 started!
    Bids for round №1 are: [#<Bid:0x0000555b5bb984b0 @agent=#<Agent:0x0000555b5bb987f8 @name="aaa">, @amount=2>, #<Bid:0x0000555b5bb98460 @agent=#<Agent:0x0000555b5bb987a8 @name="bbb">, @amount=2>, #<Bid:0x0000555b5bb98410 @agent=#<Agent:0x0000555b5bb98758 @name="ccc">, @amount=2>, #<Bid:0x0000555b5bb983c0 @agent=#<Agent:0x0000555b5bb986e0 @name="sss">, @amount=3>, #<Bid:0x0000555b5bb98370 @agent=#<Agent:0x0000555b5bb98690 @name="nnn">, @amount=1>, #<Bid:0x0000555b5bb982a8 @agent=#<Agent:0x0000555b5bb98640 @name="mmm">, @amount=3>]
    Agent #<Agent:0x0000555b5bb98690 @name="nnn"> withdrawn from bidding by rules
    Bid #<Bid:0x0000555b5bb98370 @agent=#<Agent:0x0000555b5bb98690 @name="nnn">, @amount=1> removed from BidsQueue by rules
    Round №1 finished!
    Bids which go to the next bidding round are: [#<Bid:0x0000555b5bb984b0 @agent=#<Agent:0x0000555b5bb987f8 @name="aaa">, @amount=2>, #<Bid:0x0000555b5bb98460 @agent=#<Agent:0x0000555b5bb987a8 @name="bbb">, @amount=2>, #<Bid:0x0000555b5bb98410 @agent=#<Agent:0x0000555b5bb98758 @name="ccc">, @amount=2>, #<Bid:0x0000555b5bb983c0 @agent=#<Agent:0x0000555b5bb986e0 @name="sss">, @amount=3>, #<Bid:0x0000555b5bb982a8 @agent=#<Agent:0x0000555b5bb98640 @name="mmm">, @amount=3>]
    ########### ROUND END ############### ROUND END ################## ROUND END #############################
    Bids got updated for a new round: [#<Bid:0x0000555b5bb984b0 @agent=#<Agent:0x0000555b5bb987f8 @name="aaa">, @amount=8>, #<Bid:0x0000555b5bb98460 @agent=#<Agent:0x0000555b5bb987a8 @name="bbb">, @amount=4>, #<Bid:0x0000555b5bb98410 @agent=#<Agent:0x0000555b5bb98758 @name="ccc">, @amount=4>, #<Bid:0x0000555b5bb983c0 @agent=#<Agent:0x0000555b5bb986e0 @name="sss">, @amount=9>, #<Bid:0x0000555b5bb982a8 @agent=#<Agent:0x0000555b5bb98640 @name="mmm">, @amount=6>]
    ########### ROUND BEGIN ############### ROUND BEGIN ################## ROUND BEGIN ######################
    Round №2 started!
    Bids for round №2 are: [#<Bid:0x0000555b5bb984b0 @agent=#<Agent:0x0000555b5bb987f8 @name="aaa">, @amount=8>, #<Bid:0x0000555b5bb98460 @agent=#<Agent:0x0000555b5bb987a8 @name="bbb">, @amount=4>, #<Bid:0x0000555b5bb98410 @agent=#<Agent:0x0000555b5bb98758 @name="ccc">, @amount=4>, #<Bid:0x0000555b5bb983c0 @agent=#<Agent:0x0000555b5bb986e0 @name="sss">, @amount=9>, #<Bid:0x0000555b5bb982a8 @agent=#<Agent:0x0000555b5bb98640 @name="mmm">, @amount=6>]
    Agent #<Agent:0x0000555b5bb987f8 @name="aaa"> withdrawn from bidding by rules
    Bid #<Bid:0x0000555b5bb984b0 @agent=#<Agent:0x0000555b5bb987f8 @name="aaa">, @amount=8> removed from BidsQueue by rules
    Agent #<Agent:0x0000555b5bb98758 @name="ccc"> withdrawn from bidding by rules
    Bid #<Bid:0x0000555b5bb98410 @agent=#<Agent:0x0000555b5bb98758 @name="ccc">, @amount=4> removed from BidsQueue by rules
    Agent #<Agent:0x0000555b5bb98640 @name="mmm"> withdrawn from bidding by rules
    Bid #<Bid:0x0000555b5bb982a8 @agent=#<Agent:0x0000555b5bb98640 @name="mmm">, @amount=6> removed from BidsQueue by rules
    Round №2 finished!
    Bids which go to the next bidding round are: [#<Bid:0x0000555b5bb98460 @agent=#<Agent:0x0000555b5bb987a8 @name="bbb">, @amount=4>, #<Bid:0x0000555b5bb983c0 @agent=#<Agent:0x0000555b5bb986e0 @name="sss">, @amount=9>]
    ########### ROUND END ############### ROUND END ################## ROUND END #############################
    Bids got updated for a new round: [#<Bid:0x0000555b5bb98460 @agent=#<Agent:0x0000555b5bb987a8 @name="bbb">, @amount=10>, #<Bid:0x0000555b5bb983c0 @agent=#<Agent:0x0000555b5bb986e0 @name="sss">, @amount=18>]
    ########### ROUND BEGIN ############### ROUND BEGIN ################## ROUND BEGIN ######################
    Round №3 started!
    Bids for round №3 are: [#<Bid:0x0000555b5bb98460 @agent=#<Agent:0x0000555b5bb987a8 @name="bbb">, @amount=10>, #<Bid:0x0000555b5bb983c0 @agent=#<Agent:0x0000555b5bb986e0 @name="sss">, @amount=18>]
    Agent #<Agent:0x0000555b5bb987a8 @name="bbb"> withdrawn from bidding by rules
    Bid #<Bid:0x0000555b5bb98460 @agent=#<Agent:0x0000555b5bb987a8 @name="bbb">, @amount=10> removed from BidsQueue by rules
    Round №3 finished!
    Bids which go to the next bidding round are: [#<Bid:0x0000555b5bb983c0 @agent=#<Agent:0x0000555b5bb986e0 @name="sss">, @amount=18>]
    ########### ROUND END ############### ROUND END ################## ROUND END #############################
    No more rounds required, final condition of bidding circle meet
    Winners who's going to next bidding process: [#<Bid:0x0000555b5bb983c0 @agent=#<Agent:0x0000555b5bb986e0 @name="sss">, @amount=18>]


### Task description:

    #   Rules for bidding:
    #   Agents always bid in sequence, e.g. agent 1 bids first, then agent 2, etc.
    #   The bidding starts with the first agent deciding on their initial bid (which will be returned by `get_bid_increase`). The amount can also be 0.
    #   The next agent (e.g. agent 2) must then increase their bid so that their bid is as much as any other agent's bid
    # (which so far is only agent 1), or be forced to withdraw from the bidding completely. (if the agent has withdrawn,
    # they will be skipped from here onwards).
    # They may also decide to bid more, in which case the next agent has to match that higher bid (or withdraw).
    #   The bidding will come around to agent 1 again if their current bid does not match the highest bid.
    # The agent must increase their bid (by returning the value they want to increase it by from `getBidIncrease`)
    # so that their bid will match the highest bid that any other agent has put in so far, or withdraw from the bidding.
    # They can also have the option to decide to bid more, same as discussed above.
    #   Keep in mind that the bidding can circle the group of agents more than once, depending on
    # if agents up their bids.
    # Each agent who wishes to proceed is required to have committed a bid that is equal
    # to the highest bid made by any other agent, counted over the duration of the bidding process.
    # NB: The bidding
    # will end immediately once this condition is met - an agent is not allowed to up their bid once everyone else has matched them.
    #   There can be multiple agents left at the end of bidding process, all with the same bid.
    # That will be handled by a second bidding process that's outside the scope of this exercise.
    
    #   Hints:
    # - Be sure you understand the above bidding rules clearly.
    # - Do not implement a literal solution to the problem, i.e. don't read each line on its own and write code just for
    # that part of the requirements. Rather, think about it holistically so you can come up with a solution that meets all the requirements.
    #
    # - No consideration should be paid to performance - clear, readable code is more imporant in this exercise.