def setup():
    size(100, 100)
    noStroke()

def draw():
    background(126)
    ellipse(mouseX, 16, 33, 33)  # top circle
    ellipse(mouseX + 20, 50, 33, 33)  # middle circle
    ellipse(mouseX - 20, 84, 33, 33)  # bottom circle
