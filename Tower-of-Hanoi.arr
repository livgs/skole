use context essentials2021
rod = circle(5, "solid", "black")
red-c = circle(20, "solid", "red")
green-c = circle(30, "solid", "green")
blue-c = circle(40, "solid", "blue")
orange-c = circle(50, "solid", "orange")

rod1 = overlay(rod, red-c)
rod2 = overlay(rod1, green-c)
rod3 = overlay(rod2, blue-c)
rod4 = overlay(rod3, orange-c)

move1 = overlay(circle(40, "solid", "blue"),
 circle(50, "solid", "orange"))

move2 = overlay(circle(30, "solid", "green"),
  move1)


var left-rod = overlay(rod, overlay(red-c, overlay(green-c, overlay(blue-c, orange-c))))
var mid-rod = rod
var right-rod = rod

box = empty-scene(500, 150)
var step-1 = put-image(left-rod, 100, 75, box)
var step-2 = put-image(mid-rod, 250, 70, step-1)
var step-3 = put-image(right-rod, 400, 70, step-2)
step-3

box1 = overlay-xy(left-rod, -100, -70, box)
box2 = overlay-xy(box1, 100, 100, box)

left-rod := overlay(rod, overlay(green-c, overlay(blue-c, orange-c)))
mid-rod := overlay(rod, red-c)

step-1 := put-image(left-rod, 100, 75, box)
step-2 := put-image(mid-rod, 250, 70, step-1)
step-3 := put-image(right-rod, 400, 70, step-2)
step-3

left-rod := overlay(rod, overlay(blue-c, orange-c))
right-rod := overlay(rod, overlay(rod, green-c))
  
step-1 := put-image(left-rod, 100, 75, box)
step-2 := put-image(mid-rod, 250, 70, step-1)
step-3 := put-image(right-rod, 400, 70, step-2)
step-3

mid-rod := rod
right-rod := overlay(rod, overlay(red-c, green-c))

step-1 := put-image(left-rod, 100, 75, box)
step-2 := put-image(mid-rod, 250, 70, step-1)
step-3 := put-image(right-rod, 400, 70, step-2)
step-3

left-rod := overlay(rod, orange-c)
mid-rod := overlay(rod, blue-c)

step-1 := put-image(left-rod, 100, 75, box)
step-2 := put-image(mid-rod, 250, 70, step-1)
step-3 := put-image(right-rod, 400, 70, step-2)
step-3

left-rod := overlay(rod, overlay(red-c, orange-c))
right-rod := overlay(rod, green-c)

step-1 := put-image(left-rod, 100, 75, box)
step-2 := put-image(mid-rod, 250, 70, step-1)
step-3 := put-image(right-rod, 400, 70, step-2)
step-3

mid-rod := overlay(rod, overlay(green-c, blue-c))
right-rod := rod

step-1 := put-image(left-rod, 100, 75, box)
step-2 := put-image(mid-rod, 250, 70, step-1)
step-3 := put-image(right-rod, 400, 70, step-2)
step-3

left-rod := overlay(rod, orange-c)
mid-rod := overlay(rod,overlay(red-c, overlay(green-c, blue-c)))

step-1 := put-image(left-rod, 100, 75, box)
step-2 := put-image(mid-rod, 250, 70, step-1)
step-3 := put-image(right-rod, 400, 70, step-2)
step-3

left-rod := rod
right-rod := overlay(rod, orange-c)

step-1 := put-image(left-rod, 100, 75, box)
step-2 := put-image(mid-rod, 250, 70, step-1)
step-3 := put-image(right-rod, 400, 70, step-2)
step-3

mid-rod := overlay(rod, overlay(green-c, blue-c))
right-rod := overlay(rod, overlay(red-c, orange-c))

step-1 := put-image(left-rod, 100, 75, box)
step-2 := put-image(mid-rod, 250, 70, step-1)
step-3 := put-image(right-rod, 400, 70, step-2)
step-3

left-rod := overlay(rod, green-c)
mid-rod := overlay(rod, blue-c)
right-rod := overlay(rod, overlay(red-c, orange-c))

step-1 := put-image(left-rod, 100, 75, box)
step-2 := put-image(mid-rod, 250, 70, step-1)
step-3 := put-image(right-rod, 400, 70, step-2)
step-3

left-rod := overlay(rod, overlay(red-c, green-c))
right-rod := overlay(rod, orange-c)

step-1 := put-image(left-rod, 100, 75, box)
step-2 := put-image(mid-rod, 250, 70, step-1)
step-3 := put-image(right-rod, 400, 70, step-2)
step-3

mid-rod := rod
right-rod := overlay(rod, overlay(blue-c, orange-c))

step-1 := put-image(left-rod, 100, 75, box)
step-2 := put-image(mid-rod, 250, 70, step-1)
step-3 := put-image(right-rod, 400, 70, step-2)
step-3

left-rod := overlay(rod, green-c)
mid-rod := overlay(rod, red-c)

step-1 := put-image(left-rod, 100, 75, box)
step-2 := put-image(mid-rod, 250, 70, step-1)
step-3 := put-image(right-rod, 400, 70, step-2)
step-3

left-rod := rod
right-rod := overlay(rod, overlay(green-c, overlay(blue-c, orange-c)))

step-1 := put-image(left-rod, 100, 75, box)
step-2 := put-image(mid-rod, 250, 70, step-1)
step-3 := put-image(right-rod, 400, 70, step-2)
step-3

mid-rod := rod
right-rod := overlay(rod, overlay(red-c, overlay(green-c, overlay(blue-c, orange-c))))

step-1 := put-image(left-rod, 100, 75, box)
step-2 := put-image(mid-rod, 250, 70, step-1)
step-3 := put-image(right-rod, 400, 70, step-2)
step-3
