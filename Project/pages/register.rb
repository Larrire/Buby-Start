def register(params)
  puts "Register page"
  50.times {print '-'}
  puts ''
  puts "Name:"
  name = gets.chomp();
  puts "Email:"
  email = gets.chomp();
  puts "Password:"
  password = gets.chomp();

  user = User.new
    
  system('cls')

  if( user.register(name, email, password) )
    puts "User successfuly registered"
    return "home"
  else
    puts "There was an erro, please try again later"
    return "home"
  end
end
