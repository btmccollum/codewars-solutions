# https://www.codewars.com/kata/ball-upwards/train/ruby

# You throw a ball vertically upwards with an initial speed v (in km per hour). The height h of the ball at each time t is given by h = v*t - 0.5*g*t*t where g is Earth's gravity (g ~ 9.81 m/s**2). A device is recording at every tenth of second the height of the ball. For example with v = 15 km/h the device gets something of the following form: (0, 0.0), (1, 0.367...), (2, 0.637...), (3, 0.808...), (4, 0.881..) ... where the first number is the time in tenth of second and the second number the height in meter.

# Task
# Write a function max_ball with parameter v (in km per hour) that returns the time in tenth of second of the maximum height recorded by the device.

# Examples:
# max_ball(15) should return 4

# max_ball(25) should return 7

def max_ball(v0)
  current_h = Float::INFINITY
  prev_h = calculate_height(v0, 0)
  t = 0
  
  loop do
    current_h = calculate_height(v0, t)
    return t - 1 if current_h < prev_h
    prev_h = current_h
    t += 1
  end 
end

def calculate_height(v, t)
  vel = v / 3.6 
  time = t.to_f / 10
  vel * time - 0.5 * 9.81 * time * time
end