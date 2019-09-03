# You and your friends have been battling it out with your Rock 'Em, Sock 'Em robots, but things have gotten a little boring. You've each decided to add some amazing new features to your robot and automate them to battle to the death.

# Each robot will be represented by an object. You will be given two robot objects, and an object of battle tactics and how much damage they produce. Each robot will have a name, hit points, speed, and then a list of battle tacitcs they are to perform in order. Whichever robot has the best speed, will attack first with one battle tactic.

# Your job is to decide who wins.

# Rules

# A robot with the most speed attacks first. If they are tied, the first robot passed in attacks first.
# Robots alternate turns attacking. Tactics are used in order.
# A fight is over when a robot has 0 or less health or both robots have run out of tactics.
# A robot who has no tactics left does no more damage, but the other robot may use the rest of his tactics.
# If both robots run out of tactics, whoever has the most health wins. Return the message "{Name} has won the fight."
# If both robots run out of tactics and are tied for health, the fight is a draw. Return "The fight was a draw."

class Robot
  attr_reader :name, :health, :speed, :tactics
  
  def initialize(opts)
    @name     = opts['name']
    @health   = opts['health']
    @speed    = opts['speed']
    @tactics  = opts['tactics']
  end
  
  def cant_fight?
    tactics.size == 0
  end
  
  def takes_dmg(dmg)
    @health -= dmg.to_i
  end
  
  def no_moves?
    tactics.empty?
  end
  
  def down?
    health == 0
  end
end

class Fight
  attr_reader :rounds, :move_list, :opp1, :opp2
  
  def initialize(tactics, opp1, opp2)
    @move_list   = tactics
    @rounds      = tactics.length
    @opp1        = opp1
    @opp2        = opp2
  end

  def determine_first_attacker
    if opp1.speed > opp2.speed
      return opp1
    elsif opp2.speed > opp1.speed 
      return opp2
    else
      return opp1
    end
  end
  
  def declare_winner(opp)
    "#{opp.name} has won the fight."
  end
end

# --- KATA METHOD

def fight(robot1, robot2, tactics)
  robot_one       = Robot.new(robot1)
  robot_two       = Robot.new(robot2)
  match           = Fight.new(tactics, robot_one, robot_two)
  
  # determine round attack order (quickest fighter)
  first_attacker  = match.determine_first_attacker
  second_attacker = first_attacker == robot_one ? robot_two : robot_one
  
  # check to make sure fight can happen
  if first_attacker.cant_fight? && second_attacker.cant_fight?
    return "The fight was a draw."
  elsif first_attacker.cant_fight?
    return match.declare_winner(second_attacker)
  elsif second_attacker.cant_fight?
    return match.declare_winner(first_attacker)
  end 
  
  0.upto(match.rounds - 1) do |round|
    first_attackers_move  = tactics[first_attacker.tactics[round]]
    second_attackers_move = tactics[second_attacker.tactics[round]]
    
    second_attacker.takes_dmg(first_attackers_move)
    return match.declare_winner(second_attacker) if first_attacker.down?
    
    first_attacker.takes_dmg(second_attackers_move)
    return match.declare_winner(first_attacker) if second_attacker.down?
  end
  
  # determine winner if we run out of moves
  return "The fight was a draw." if first_attacker.health == second_attacker.health
  
  first_attacker.health > second_attacker.health ? match.declare_winner(first_attacker) : match.declare_winner(second_attacker)
end

