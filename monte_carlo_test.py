import  numpy as np

# given that sales ~ N(1500,30^2)
# and there are two production strategy:
#   1. produce by the sales of the last day
#   2. produce by the average of the previous two days


def mcun(T, S1, S21, S22):
    """
    Arguments:
        T: days of simulation
        S1: Sales of the last day for S1(strategy 1)
        S21: Sales of 1 day before, S2(strategy 2)
        S22: Sales of 2 day before, S2(strategy 2)
    Return:
        cum profit 1 $ cum_profit 2 : the cumulated profit during T days of simulation.
    """
    cum_profit1 = 0
    cum_profit2 = 0
    Demand = []

    for t in range(T):
        # the number of inventory for S1 = the sales yesterday
        inv1 = S1

        # the number of inventory for S2 is the average of 2-days' sales 
        inv2 = (S21+S22)/2

        # Sample the demand number of that day
        demand = np.random.normal(1500,30) # mu , std

        # the actual sales of the day
        # sale all the inventory if demand is large
        Act_S1 = inv1 if demand > inv1 else (demand)
        Act_S2 = inv2 if demand > inv2 else (demand)

        # profit of the day, sale price :4, cost of product: 1.5
        profit1 = 4*Act_S1 - 1.5*inv1
        profit2 = 4*Act_S2 - 1.5*inv2

        cum_profit1 += profit1 # add to the cumulated profits
        cum_profit2 += profit2

        # replace the actual sales to the record
        S1 = Act_S1

        #  rotate
        S22 = S21 
        S21 = Act_S2

        Demand.append(demand)

    
    return cum_profit1,cum_profit2,Demand