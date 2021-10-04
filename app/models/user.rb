class User < ActiveRecord::Base
    has_many :games
    
    def hi
        puts "#{full_name} says hi"
    end

end