
def home(params)
  homeloop = true
  puts "Home page"
  50.times {print '-'}
  puts ''
  puts "Hello, what do you want to do?"
  puts "1 - Login"
  puts "2 - Register"
  puts "3 - Exit"
  while(homeloop)
    action = gets.chomp()
    system('cls')
    homeloop = false
    case action
      when '1'
        return 'login_page'
      when '2'
        return 'register'
      when '3'
        return 'exit'
      else
        "Choose a valid option"
    end
  end
end