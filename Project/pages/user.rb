def user(user)
  puts "User page"
  50.times {print '-'}
  puts ''
  puts user.name
  puts user.email
  route = gets.chomp()
  return route
end