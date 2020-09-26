def withdrawal
  puts "-" * 23
  puts "Account Withdrawal"
  puts "-" * 23

  puts "Enter a withdrawal amount:"
  $withdrawal_amount = gets.chomp.to_i

  while $withdrawal_amount.to_i > $balance.to_i
    puts "Sorry, insufficient funds. Please deposit into your account and try again.."
    $withdrawal_amount = gets.chomp.to_i
    puts "Please wait while your transcation is processing.."
  end

  puts "Enter your password to confirm:"
  password = gets.chomp

  password_count = 3
  while password != $first_password
    if password_count == 1
      puts "Sorry your account has been blocked! Please contact your bank."
      exit
    end
    password_count = password_count - 1
    puts "Incorrect password, #{password_count} attempt left and your account would be blocked!"
    password = gets.chomp
  end
  $balance = $balance.to_i - $withdrawal_amount.to_i
  puts "$#{$withdrawal_amount} was successfully debited from your account. Your current account balance is now #{$balance}."
  menu("dave")
end