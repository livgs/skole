use context essentials2021
outline = circle(101, "outline", "black")
back = circle(100, "solid", "yellow")
front-left = circle(25, "solid", "white")
front-right = circle(25, "solid", "white")
inner-left = circle(16, "solid", "black")
inner-right = circle(16, "solid", "black")
rect = rectangle(70, 5, "solid", "black")

step1 = overlay-xy(outline, -1, -1, back)
step2 = overlay-xy(rect, -65, -135, step1)
step3 = overlay-xy(front-right, -120, -50, step2)
step4 = overlay-xy(front-left, -40, -50, step3)
step5 = overlay-xy(inner-right, -136, -60, step4)
step6 = overlay-xy(inner-left, -56, -60, step5)

step6

