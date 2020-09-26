def send_money
  puts "-" * 10
  puts "Send Money"
  puts "-" * 10
  
  puts "Enter the receving account number:"
  $receving_account_number = gets.chomp.to_i
  if $receiving_account_number != 23
    puts "This is an invalid account number, user not found."
    puts "Please enter a valid account number to send money."
    $receiving_account_number = gets.chomp.to_i
  end

  puts "Enter the amount you wish to send:"
  $sending_amount = gets.chomp.to_i
  if $sending_amount.to_i > $balance.to_i
    puts "Insufficient funds, please deposit into your account and try again"
    $sending_amount = gets.chomp.to_i
  end

  puts "Enter a name for the receiver:"
  receiver_name = gets.chomp

  puts "Are you sure you want to send $#{$sending_amount} to #{receiver_name}?"
  puts "yes"
  puts "or"
  puts "no"
  answer = gets.chomp.upcase

  if answer == "no"
    puts "Thank you for banking with us..."
    puts "-" * 5
    puts "Menu"
    puts "-" * 5
    puts "Hi #{$first_name}, what would you like to do today?"
    puts "-" * 3
    menu("dave")
  end
    puts "Enter your password to confirm"
    password = gets.chomp

  password_count = 3
  while password != $first_password
    if password_count == 1
      puts "Sorry your account has been blocked! Please contact your bank."
      exit
    end
    password_count = password_count - 1
    puts "Incorrect password #{password_count} attempts left and you account would be blocked!"
    password = gets.chomp
  end
    $balance = $balance.to_i - $sending_amount.to_i
    puts "$#{$sending_amount} was successfully sent to #{receiver_name}. You current account balance is now $#{$balance}."
    menu("dave")
end