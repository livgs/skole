use context essentials2021

rect = rectangle
red = rect(220, 160, "solid", "crimson")
white1 = rect(40, 160, "solid", "white")
white2 = rect(220, 40, "solid", "white")
blue1 = rect(220, 20, "solid", "navy")
blue2 = rect(20, 160, "solid", "navy")

step1 = overlay-xy(white2, 60, -60, white1)
step2 = overlay-xy(blue1, 70, -70, blue2)
step3 = overlay(step2, step1)
step4 = overlay(step3, red)

frame(step4)