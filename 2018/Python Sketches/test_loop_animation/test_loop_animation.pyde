x = 0;

def setup():
    size(500,500)
    background("#8786D6")
    stroke(255)
    strokeWeight(2)
    noFill()
    frameRate(5)

def draw():
    global x
    
    # check if the x is in bound
    if(x*10 > width/2):
        background("#8786D6")
        x = 0
    
    # decide on stroke color       
    if(x % 2):
        stroke(255)
    else:
        stroke("#4745BF")
    
    # draw ellipse        
    ellipse(x*10, x+10, 50*x,50*x)
    
    # update x
    x += 1