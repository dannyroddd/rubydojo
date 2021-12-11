class FIGHTER 
    def initialize (name)
        @name = name
        @luck = rand(10)
        @health = rand(30)
        @defense = rand(5)
        @strength = rand(10)
        # @damage = rand(5)
    end
    def name
        return @name
    end
    def luck
        return @luck
    end
    def strength 
        return @strength
    end
    def health
        @health
    end
    def damage
        @health -= rand(10)
    end
    def defense
        return @defense
    end
    def fight(opp)
       if @luck >= rand(10)
        puts "#{@name} hit #{opp.name}"
        opp.damage
        end
        puts "#{@name} missed"
    end

end

# class Dojo
#     def self.lift_weights(FIGHTER)
#         FIGHTER.strength += 1
#         puts "You are feeling your strength surge"
#     end
# end