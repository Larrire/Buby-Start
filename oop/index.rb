require 'C:\Users\linik\OneDrive\Área de Trabalho\rubyStart\oop\student.rb'
# gem install bcrypt
require 'bcrypt'

a = Student.new('jorge', 'maia', 'kajksksa', '122', 'ksdksdk')

my_password = BCrypt::Password.create("my password")

puts my_password == 'my password'