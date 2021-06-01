
require_relative 'pages/home'
require_relative 'pages/play'

actual_route = "home"
params = nil
loop = true

routes = {
  "home" => lambda{
    home
  },
  "play" => lambda{
    play
  },
  "rank" => lambda{
    home
  },
  "register" => lambda{
    home
  },
  "exit" => lambda{
    loop = false
    system('cls')
  },
}

while(loop)
  actual_route = routes[actual_route].call
end