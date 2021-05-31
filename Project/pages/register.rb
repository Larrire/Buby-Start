def register
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
    page_login
  else
    puts "There was an erro, please try again"
    page_home
  end
end
