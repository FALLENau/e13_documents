def add_or_remove_cash(bar, cash)
  return shop[:bar][:total_cash] += cash
end #note: working to to test currently


def customer_can_afford_drink(customer, beer)
  return customer[:cash] >= beer[:cost]
end
