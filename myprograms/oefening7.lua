require 'robot_arm'
robot_arm:load_level('exercise 8')

robot_arm.speed = 0.999

robot_arm:move_right()
for o=1, 7 do
  robot_arm:grab()
  for a=1, 8 do
    robot_arm:move_right()
  end
  robot_arm:drop()
  for a=1, 8 do
    robot_arm:move_left()
  end
end