require 'robot_arm'
robot_arm:load_level('exercise 2')

find = 0
count = 0

robot_arm.speed = 0.999

while count ~= 3 do
  while find ~= 1 do
    robot_arm:grab()
    what = robot_arm:scan()
    if what=="blue" then
      print('[LOG] Find something')
      find = 1
    elseif what~="blue" then
      robot_arm:drop()
      robot_arm:move_right()
      print('[LOG] Find nothing')
    end
  end
  for i=1, 9 do
    robot_arm:move_right()
  end
  robot_arm:drop()
  count= count+1
  find = 0
  print ("[LOG] Blocks moved: "..count)
  for i=1, 9 do
    robot_arm:move_left()
  end
end
print("[LOG] Done!")