require 'robot_arm'
robot_arm:load_level('exercise 10')

robot_arm.speed = 0.999

loc = 9

for o=1, 5 do
  robot_arm:grab()
  for a=1, loc do
    robot_arm:move_right()
  end
  robot_arm:drop()
  for i=2, loc do
    robot_arm:move_left()
  end
  loc = loc-2
end