

def home
  homeloop = true
  puts "Home page"
  50.times {print '-'}
  puts ''
  puts "Hello, what do you want to do?(1/2)"
  puts "1 - Login"
  puts "2 - Register"
  puts "3 - Exit"
  while(homeloop)
    action = gets.chomp()
    system('cls')
    case action
      when '1'
        actual_route = 'login'
        homeloop = false
      when '2'
        actual_route = 'register'
        homeloop = false
      when '3'
        actual_route = 'exit'
        homeloop = false
      else
        "Choose a valid option"
    end
  end
end