puts "It's bright and early in the morning and you decide to get some fresh air!  You can choose to walk or run.  Walking increases your energy and running uses it up.  You can only run as long as you have energy.  If you run out of energy, either walk, rest, or forage for food to get more energy to run. When you're done playing, you can go home.  Do you want to play? (yes or no)"
loop do
desire_to_play = gets.chomp

if desire_to_play == "yes"

# where the game starts
  distance = 0
  energy = 3

  while distance >= 0
  puts "Would you like to walk or run"
  activity = gets.chomp
  if activity == "walk"
    energy += 1
    puts "You are #{distance += 1}km from home! You have #{energy} energy."
  elsif activity == "run"
    if energy < 2
      puts "You have #{energy} energy.  Please walk or rest to regain some energy!"
    else
      energy -= 2
      puts "You are #{distance += 5}km from home! You have #{energy} energy."
    end
  elsif activity == "rest"
    energy += 2
    puts "Whew, that was hard work!  You have #{energy} energy."
  elsif activity == "forage"
    if energy < 1
      puts "You don't have enough energy to look for food.  Please walk or rest to regain energy."
    else
      food = Random.rand
      if food > 0.8
        energy += 2
        puts "You found some nuts! Your energy is increased by 2.  You have #{energy} energy."
      elsif food > 0.5
        energy +=1
        puts "You found an apple! Your energy is increased by 1.  You have #{energy} energy."
      else
        puts "Sorry no food here."
      end
    end
  elsif activity == "go home"
    puts "Welcome Home!  You travelled #{distance}km from home today!"
    break
  else
    puts "Invalid activity.  Please enter walk, run, rest, forage, or go home"
  end
  end
# game end
puts "Do you want to play again?"

elsif desire_to_play == "no"
  puts "How sad!  Maybe next time"
  break
else
  puts "Please enter yes or no!"
end
end
