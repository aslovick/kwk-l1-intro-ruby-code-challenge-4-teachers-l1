# def least_coins(cents)
#   coin_types = {
#     :quarters => 0,
#     :dimes => 0,
#     :nickels => 0,
#     :pennies => 0
#   }

#   quarters = cents/25
#   if quarters == 0
#     coin_types[:quarters] = 0
#   elsif quarters != 0
#     coin_types[:quarters] = quarters
#     cents = cents - quarters*25
#   end

#   dimes = cents/10
#   if dimes == 0
#     coin_types[:dimes] = 0
#   elsif dimes != 0
#     coin_types[:dimes] = dimes
#     cents = cents - dimes*10
#   end

#   nickels = cents/5
#   if nickels == 0
#     coin_types[:nickels] = 0
#   elsif nickels != 0
#     coin_types[:nickels] = nickels
#     cents = cents - nickels*5
#   end

#   pennies = cents
#   if pennies == 0
#     coin_types[:pennies] = 0
#   elsif pennies != 0
#     coin_types[:pennies] = pennies
#   end

#   puts coin_types

#   coin_types

# end

# least_coins(29)

# def least_coins(cents)
#   coins = {
#     :quarters => 0,
#     :dimes => 0,
#     :nickels => 0,
#     :pennies => 0
#   }

#   # counter = 0

#   until cents == 0
#     if cents >= 25
#         coins[:quarters] += 1
#         cents = cents - 25
#     elsif cents >= 10
#         coins[:dimes] += 1
#         cents = cents - 10
#     elsif cents >= 5
#         coins[:nickels] += 1
#         cents = cents - 5
#     elsif cents >= 1
#         coins[:pennies] += 1
#         cents = cents - 1
#     else
#       break
#     end
#   end
#   puts coins
# end
# least_coins(52)

def least_coins(cents)
  coins = {
    :quarters => 0,
    :dimes => 0,
    :nickels => 0,
    :pennies => 0
  }
  
  until cents == 0
  if cents % 25 == 0
    # coins[:quarters] += 1
    # cents = cents - 25
    coin_types[:quarters] = quarters
    cents = cents - quarters*25
  elsif cents % 10 == 0
    coins[:dimes] += 1
    cents = cents - 10
  elsif cents % 5 == 0
    coins[:nickels] += 1
    cents = cents - 5
  elsif cents % 1 == 0 
    coins[:pennies] += 1
    cents = cents - 1
  else
    break
  end
  end
  puts coins
end
least_coins(52)
