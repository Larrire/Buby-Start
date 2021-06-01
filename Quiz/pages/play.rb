require 'json'
require 'bcrypt'

def play 
  system('cls')
  base_url = 'C:\Users\linik\OneDrive\Área de Trabalho\rubyStart\Quiz\\';
  answers = 0
  right_answers = 0
  wrong_answers = 0

  file = File.read(base_url + 'questions.json')
  file.methods
  questions = JSON.parse(file)
  while(answers<5)
    question = questions[rand(questions.length-1)]
    puts question['title']
    50.times { print '-' }
    puts ''
    question['options'].shuffle!
    question['options'].each_with_index { |title, index|
      puts "#{index+1} - #{title['answer']}"
    }
    print "R: "
    answer = gets.chomp.to_i

    if( [1,2,3,4].include?(answer) )
      answer_index = answer - 1
      hashed_answer = BCrypt::Password.new(question['options'][answer_index]['isCorrect'])

      if( hashed_answer == "true" )
        puts "Correct answer =D"
        right_answers = right_answers + 1
        puts right_answers
      else
        puts "Wrong answer =C"
        wrong_answers = wrong_answers + 1
      end
      puts "Press Enter to continue"
      gets.chomp()
      answers = answers + 1
      system('cls')
    else
      puts "Choose a valid option!"
    end
  end # while
  puts "Your total score is: #{right_answers}"
  puts "Congratulations =D"
  puts "Press enter to return to home"
  gets.chomp
  return "home"
end