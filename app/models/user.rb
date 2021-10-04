class User < ActiveRecord::Base
    has_many :games
    belongs_to :profile
    
    def hi
        puts "#{full_name} says hi"
    end

end