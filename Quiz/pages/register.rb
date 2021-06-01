require 'json'
require 'bcrypt'

def register 
  system('cls')
  base_url = 'C:\Users\linik\OneDrive\Área de Trabalho\rubyStart\Quiz\\';
  
  file = File.read(base_url + 'questions.json')
  questions = JSON.parse(file)
  
  return "home"
end