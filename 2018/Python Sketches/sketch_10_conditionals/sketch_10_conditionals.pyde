def setup():
    size(100, 100)
    noStroke()
    fill(0)

def draw():
    background(204)
    if(mouseX < 50):
        rect(0,0,50,100) # left
    else:
        rect(50,0,50,100) # right