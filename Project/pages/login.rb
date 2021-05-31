def login
  puts "Login page"
  50.times {print '-'}
  puts ''
  attemps = 0
  tryagain = nil
  while(true)
    puts "Email:"
    email = gets.chomp()
    puts "Password:"
    password = gets.chomp()

    user = User.new

    if( user.authenticate(email, password) )
      system('cls')
      puts "Login successful!"
      page_user(user)
      break
    else
      puts "User not found, would you like to try again?(y/n)"
      tryagain = gets.chomp()
    end

    system('cls')
    if( tryagain.downcase != 'y' )
      page_home
    end

    if(attemps === 5)
      puts "You have exceeded the number of attempts!"
      break
    else
      attemps = attemps + 1
    end
  end
end