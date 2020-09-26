def sign_up
  puts "-" * 23
  puts "Open an Account"
  puts "-" * 23

  puts "Let's get you started please answer the following questions:"
  puts "-" * 3

  puts "First Name"
  $first_name = gets.chomp

  puts "Last Name"
  last_name = gets.chomp

  puts "Date of Birth (YY-MM-DD)"
  date_of_bith = gets.chomp

  puts "Phone Number"
  phone_number = gets.chomp

  puts "E-mail"
  email = gets.chomp

  puts "House address"
  house_address = gets.chomp

  puts "Choose a Password"
  $first_password = gets.chomp

  puts "Confirm Password"
  confirm_password = gets.chomp
  while confirm_password != $first_password
    puts "Sorry password does not match! Try again.."
    confirm_password = gets.chomp
  end

  puts "-" * 23
  puts "Registration Successful"
  puts "-" * 23

  puts "Welcome #{$first_name} #{last_name}, your account has been created successfully."

  return $first_name
end