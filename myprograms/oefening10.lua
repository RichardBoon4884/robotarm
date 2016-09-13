require 'robot_arm'
robot_arm:load_level('exercise 11')

robot_arm.speed = 0.999

for i=0, 8 do
  robot_arm:grab()
  if robot_arm:scan() == "white" then
    robot_arm:move_right()
    robot_arm:drop()
    robot_arm:move_right()
  elseif robot_arm:scan() ~= "white" then
    robot_arm:drop()
    robot_arm:move_right()
  end
end