size(500,500)
background("#8786D6")
stroke(255)
strokeWeight(2)
noFill()

for x in range(20):
    if(x % 2):
        stroke(255)
    else:
        stroke("#4745BF")
    ellipse(x*10, x+10, 50*x,50*x)