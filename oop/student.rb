class Student
  attr_accessor :first_name, :last_name, :email
  attr_reader :username

  @first_name
  @last_name
  @email
  @username
  @password

  def initialize(first_name, last_name, email, username, password)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @username = username
    @password = password
  end#initialize

  def to_s
    puts "First name: #{@first_name} #{@last_name}"
  end#to_s

  /
  def first_name=(new_first_name)
    @first_name = new_first_name
  end

  def first_name
    @first_name
  end
  /
end#Student

jorge = Student.new('Jorge', 'Maia', 'jorgemaia@email.com', 'JorgeMaia', '123')

puts jorge.first_name
puts jorge.last_name
puts jorge.username