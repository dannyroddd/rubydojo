require "./classes.rb"

puts "What is your name?"
name = gets.chomp

Player = FIGHTER.new(name)
Randy = FIGHTER.new("Randy Orton")

while true do
    puts "Randy Orton's life: #{Randy.health} - #{Player.name}'s life: #{Player.health}"
    puts "Randy Orton's luck: #{Randy.luck} - #{Player.name}'s luck: #{Player.luck}"
    puts "do you want to [f]ight or [r]un"
input = gets.chomp

if input === "f"
    Player.fight(Randy)
    Randy.fight(Player)
end
if input === "r"
    if rand(100) > 60
        puts "You ran"
        break
    else
        puts "You were too slow to run"
        end
    end
    if Player.health <= 0
        puts "#{Player.name} has been defeated, you lose."
        break
    end
    if Randy.health <= 0
            puts "Randy Orton has been defeated, you win!"
        break
    end

        
end