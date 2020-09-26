def account_deposit
  puts "-" * 15
  puts "Account Deposit"
  puts "-" * 15

  puts "Enter a deposit amount"
  deposit_amount = gets.chomp.to_i

  $balance = 0 + deposit_amount
  puts "$#{deposit_amount} was successfully deposited. You current account balance is now $#{$balance}."
  menu("dave")
end