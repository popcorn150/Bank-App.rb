require_relative "account_deposit.rb"
require_relative "introduction.rb"
require_relative "menu.rb"
require_relative "send_money.rb"
require_relative "sign_in.rb"
require_relative "sign_up.rb"
require_relative "withdrawal.rb"


goal = introduction
if goal == "U"
  name = sign_up
  menu(name)
elsif goal == "I"
  sign_in
else
  puts "Invalid options, please check your options and try again!!"
end