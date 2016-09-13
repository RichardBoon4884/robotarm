require 'robot_arm'
robot_arm:random_level(1)


robot_arm.speed = 0.9

done = 0
step = 1
i = 0

while done ~= 1 do
  robot_arm:grab()
  result = robot_arm:scan()
  if result ~= "nill" then
    while i ~= step do
      robot_arm:move_right()
      i = i+1
      robot_arm:drop()
    end
    step = step+1
    i = 0
  end
  for i=1, 9 do
    robot_arm:move_left()
  end
end