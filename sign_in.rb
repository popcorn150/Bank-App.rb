def sign_in
  puts "-" * 21
  puts "Sign into your Acount"
  puts "-" * 21

  puts "E-mail address"
  email = gets.chomp

  puts "Password"
  password = gets.chomp

 password_count = 3
  while password != $first_password
    if password_count == 1
      puts "Invalid E-mail and password. Please sign-up for a new account next time if you don't have one.."
      exit
    end
    password_count = password_count - 1
    puts "Incorrect E-mail and password, #{password_count} attempts left."  

    puts "Enter your E-mail address"
    email = gets.chomp
    puts "Enter your password"
    password = gets.chomp
  end
end