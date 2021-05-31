base_url = 'C:\Users\linik\OneDrive\Área de Trabalho\rubyStart\Project\\';

require base_url+'classes\user.rb'
require base_url+'pages\home.rb'
require base_url+'pages\login.rb'
require base_url+'pages\register.rb'
require base_url+'pages\user.rb'

action = nil
login = nil
password = nil
attemps = 0
actual_route = "home"
loop = true

routes = {
  "home" => lambda do 
    home
    actual_route = "exit"
  end,
  "login" => lambda do 
    puts "home"
  end,
  "register" => lambda do 
    puts "home"
  end,
  "exit" => lambda do 
    loop = false
  end
}

while(loop)
  routes[actual_route].call
end