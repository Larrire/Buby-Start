class User
    def initialize(name, password)
        @name = name
        @password = password
    end

    def auth(name, password)
        return (name === @name) && (password === @password)
    end

    def getName
        @name
    end

    def getPassword
        @password
    end
end

class UserList
    def initialize(userlist)
        @userlist = userlist
    end

    def auth(username, password)
        @userlist.each { |user|  
            if( user.getName === username && user.getPassword === password )
                return user;
            end
        }
        return false
    end
end

user1 = User.new('jao', '123')
user2 = User.new('maria', '321')
user3 = User.new('Larrire', 'lar23')
user4 = User.new('felipe', '123')

userList = UserList.new([
    user1,
    user2,
    user3,
    user4
])

puts "Authenticate"
attempts = 0
while( true )
    if( attempts < 3 )
        puts "Username:"
        username_input = gets.chomp

        puts "Password:"
        passowrd_input = gets.chomp

        found_user = userList.auth(username_input, passowrd_input)

        if( found_user )
            puts found_user
            break
        else
            puts "User not found"
            attempts = attempts + 1
        end
    else 
        puts "You have exceeded the number of attempts!"
        break
    end 
end