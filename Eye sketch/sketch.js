function setup() {
    createCanvas(640, 360);
}

function draw() {
    background(255,223,196);
    
    // eye structer
    stroke(225,184,153);
    arc(320,140,170,85,PI, TWO_PI);
    arc(320,140,170,85,0, PI);
    fill(112,65,57);
    ellipse(320, 140, 50,50);
    fill(51);
    ellipse(320, 140, 25,25);
    fill(255,255,255);
    ellipse(330, 130, 10,10);
    
    // eye lashes structer
    line(250, 110, 230, 85);
    line(270, 100, 260, 70);
    line(300, 95, 300, 65);
    line(330, 95, 340, 65);
    line(360, 100, 380, 70);
    line(390, 110, 420, 85);
}