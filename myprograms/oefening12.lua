require 'robot_arm'
robot_arm:random_level(1)


robot_arm.speed = 0.9

pos = 1

while true do
  robot_arm:grab()
  if robot_arm:scan() ~= nil then
    for i=1, pos do
      robot_arm:move_right()
    end
    robot_arm:drop()
    for i=0, pos do
      robot_arm:move_left()
    end
    pos = pos+1
  elseif robot_arm:scan() == nil then
    break
  end
end