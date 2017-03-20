function setup() {
    createCanvas(640, 360);
}

function draw() {
    background(51);

    // robot antana
    line(307.5,95,312.5, 130);
    ellipse(307.5,95, 10,10);

    // robot head
    rect(290,130, 45, 35);
    ellipse(300,150, 5,5);
    ellipse(325,150, 5,5);
    line(312,165,312, 173);

    // robot body
    rect(283,173, 60, 80);
    rect(288,193, 25, 5);

    // robot left arms
    line(282,186,255, 200);
    line(255, 200,245, 240);
    line(245, 240, 235, 250);
    line(245, 240, 255, 250);

    // robot right arms
    line(343, 186, 382, 200);
    line(382, 200 ,400, 160);
    line(400, 160, 395, 145);
    line(400, 160, 415, 150);

    // left leg
    line(300, 253, 280, 293);
    line(280, 293, 285, 340);

    // right leg
    line(330, 253, 350, 293);
    line(350, 293, 350, 340);

    // feet
    rect(262,342, 25, 7);
    rect(350,342, 25, 7);
}
