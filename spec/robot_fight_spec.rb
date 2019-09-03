require_relative '../Ruby/robot_fight'

RSpec.describe '#fight' do
  it 'handles fights when one fighter is faster than another' do
    robot1 = {"name" => "Rocky", "health" => 100, "speed" => 20, "tactics" => ["punch", "punch", "laser", "missile"] }
    robot2 = {"name" => "Missile Bob", "health" => 100, "speed" => 21, "tactics" => ["missile", "missile", "missile", "missile"]}
    tactics = {"punch" => 20, "laser" => 30, "missile" => 35}
    expect(fight(robot1, robot2, tactics)).to eq("Missile Bob has won the fight.")
  end

  it 'handles a fighter with greater hp' do
    robot1 = {"name" => "Rocky", "health" => 200, "speed" => 20, "tactics" => ["punch", "punch", "laser", "missile"] }
    robot2 = {"name" => "Missile Bob", "health" => 100, "speed" => 21, "tactics" => ["missile", "missile", "missile", "missile"]}
    tactics = {"punch" => 20, "laser" => 30, "missile" => 35}
    expect(fight(robot1, robot2, tactics)).to eq("Rocky has won the fight.")
  end

  it 'handles a draw' do
    robot1 = {"name" => "Rocky", "health" => 200, "speed" => 20, "tactics" => ["punch", "punch", "laser", "missile"] }
    robot2 = {"name" => "Missile Bob", "health" => 200, "speed" => 20, "tactics" => ["missile", "missile", "missile", "missile"]}
    tactics = {"punch" => 50, "laser" => 50, "missile" => 50}
    expect(fight(robot1, robot2, tactics)).to eq("The fight was a draw.")
  end
end
