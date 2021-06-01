def home
  loophome = true
  system('cls')
  puts "Welcome to the Quiz"
  100.times { print "-" }
  puts ''
  puts 'What do you want to do?'
  puts '1 - Play'
  puts '2 - Check rank'
  puts '3 - Register new questions'
  puts '4 - Exit'

  while( loophome )
  action = gets.chomp()
    case action
      when '1'
        loophome = false
        return 'play'
      when '2'
        loophome = false
        return 'rank'
      when '3'
        loophome = false
        return 'register'
      when '4'
        loophome = false
        return 'exit'
      else
        "Choose a valid option"
    end
  end
end