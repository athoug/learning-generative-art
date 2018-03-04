def setup():
    size(100,100)
    strokeWeight(8)
    frameRate(4)
    
def draw():
    background(204)
    line(mouseX, mouseY, pmouseX, pmouseY)