//Art 150 Assignment 1
// Tian Yuan


// backgroud set
void setup() {
  size(600, 600);
  smooth();
  fill(0);
}


void draw() {
  background(0);
  stroke(0, 255, 255);
  strokeWeight(10);

  // make a circle
  ellipse(300, 300, 300, 300);
  fill(0);

  // change the color when mouse move in the circle
 if (dist(mouseX, mouseY, 300, 300) < 150){
    fill(255);
  }
  if (mousePressed){
    // 1
    strokeWeight(20);
    stroke(255, 0, 0);
    line( 300, 0, 300, 150);

    //2
    strokeWeight(20);
    stroke(255, 127, 0);
    line( 450, 0, 370, 165);

    // 3
    strokeWeight(20);
    stroke(255, 255, 0);
    line( 600, 0, 410, 200);

    // 4
    strokeWeight(20);
    stroke(0, 255, 0);
    line(600, 150, 440, 250);

    // 5
    strokeWeight(20);
    stroke(0, 255, 255);
    line( 450, 300, 600, 300);

    // 6
    strokeWeight(20);
    stroke(127, 0, 255);
    line(600, 450, 440, 350);

    // 7
    strokeWeight(20);
    stroke(0, 128, 0);
    line( 600, 600, 410, 400);

    // 8
    strokeWeight(20);
    stroke(255, 0, 255);
    line(450, 600, 360, 440);

    // 9
    strokeWeight(20);
    stroke(255, 0, 0);
    line( 300, 450, 300, 600);

    // 10
    strokeWeight(20);
    stroke(255, 127, 0);
    line( 150, 600, 230, 435);

    // 11
    strokeWeight(20);
    stroke(255, 255, 0);
    line( 0, 600, 185, 395);

    // 12
    strokeWeight(20);
    stroke(0, 255, 0);
    line(0, 450, 160, 355);

    // 13
    strokeWeight(20);
    stroke(0, 255, 255);
    line( 0, 300, 150, 300);

    // 14
    strokeWeight(20);
    stroke(127, 0, 255);
    line( 0, 150, 165, 240);

    // 15
    strokeWeight(20);
    stroke(0, 128, 0);
    line( 0, 0, 195, 195);

    // 16
    strokeWeight(20);
    stroke(255, 0, 255);
    line( 150, 0, 245, 160);

 }
}
