# gem install bcrypt
require 'bcrypt'
require 'json'

class User
  attr_reader :name, :email

  @name
  @email

  def authenticate(email, password)
    file_path = 'C:\Users\linik\OneDrive\Área de Trabalho\rubyStart\BCrypt\users.json'
    file = File.read(file_path)
    users = JSON.parse(file)

    users.each_with_index { |user, index|
      password_hash = BCrypt::Password.new(user['password'])
      if( user['email'] === email && password_hash == password )
        self.get_user_data(index)
        return self
      end
    }
    return false
  end

  def get_user_data(index)
    file_path = 'C:\Users\linik\OneDrive\Área de Trabalho\rubyStart\BCrypt\users.json'
    file = File.read(file_path)
    users = JSON.parse(file)
    user = users[index]
    @name = user['name']
    @email = user['email']
  end

  def register(name, email, password)
    file_path = 'C:\Users\linik\OneDrive\Área de Trabalho\rubyStart\BCrypt\users.json'
    file = File.read(file_path)
    users = JSON.parse(file)
    users.push({
      "name" => name,
      "email" => email,
      "password" => BCrypt::Password.create(password)
    })
    File.write(file_path, JSON.generate(users))
    return true
  end
end