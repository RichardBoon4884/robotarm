require 'robot_arm'
robot_arm:load_level('exercise 9')

robot_arm.speed = 0.999
count = 0

while count < 10 do
  robot_arm:grab()
  if robot_arm:scan() ~= nil then
    for a=1, 5 do
      robot_arm:move_right()
    end
    robot_arm:drop()
    for a=1, 5 do
      robot_arm:move_left()
    end
    count = count + 1
  elseif robot_arm:scan() == nil then
    robot_arm:move_right()
  end
end