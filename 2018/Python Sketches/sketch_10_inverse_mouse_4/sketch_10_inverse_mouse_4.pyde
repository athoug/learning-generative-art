def setup():
    size(100,100)
    noStroke()

def draw():
    x = mouseX
    y = mouseY
    ix = width - mouseX # inverse X
    iy = height - mouseY # inverse Y
    
    background(126)
    
    fill(255, 150)
    ellipse(x, height/2, y, y)
    fill(0, 159)
    ellipse(ix, height/2, iy, iy)