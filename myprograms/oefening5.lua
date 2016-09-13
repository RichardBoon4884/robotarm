require 'robot_arm'
robot_arm:load_level('exercise 6')

robot_arm.speed = 0.999

for i=1, 9 do
  robot_arm:move_right()
end
for o=1, 8 do
  robot_arm:move_left()
  robot_arm:move_left()
  robot_arm:grab()
  robot_arm:move_right()
  robot_arm:drop()
end
print("[LOG] Done!")