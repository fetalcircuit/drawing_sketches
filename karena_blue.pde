/* @pjs preload="pacman.png"; */

int c = 0;
int inc = 5;
PImage img;

void setup() {
  //fullScreen();
  size(800, 800);
  smooth();
  fill(0);
  img = loadImage("pacman.png");
}

void draw() {
  background(255, 10, 10);
  for (int i = 0; i < height+10; i+=100) {
    ellipse(c, i, 50, 50);
  }
  c += inc;
  if (c>height+110) {
    inc = -5;
  } else if (c<-110) {
    inc = 5;
  }
  if(mouseX < 100) {
    //cursor(img, 0, 0);
    imageMode(CENTER);
    image(img, mouseX, mouseY, 200, 200);
  } else {
    //cursor(HAND);
  }
}
