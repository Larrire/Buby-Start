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
params = nil
loop = true

routes = {
  "home" => -> (params) {
    home(params)
  },
  "login_page" => -> (params) {
    login_page(params)
  },
  "register" => -> (params) {
    register(params)
  },
  "user" => -> (params) {
    user(params)
  },
  "exit" => -> (params) {
    loop = false
  },
}

while(loop)
  actual_route, params = routes[actual_route].call(params)
end