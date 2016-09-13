require 'robot_arm'
robot_arm:load_level('exercise 5')

find = 0
count = 0

robot_arm.speed = 0.999

while count ~= 4 do
  while find ~= 1 do
    robot_arm:grab()
    what = robot_arm:scan() 
    if what=="white" or what=="green" or what=="blue" then
      print('[LOG] Find something')
      find = 1
    else
      robot_arm:drop()
      robot_arm:move_right()
      print('[LOG] Find nothing')
    end
  end
end
print("[LOG] Done!")