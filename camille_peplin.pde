void setup () {
  size (800, 800);
  background(100, 0, 100);
}

void draw () {
  noStroke();
  for(int i = 0; i <= 20; i+=200) {
     rect (300+i, 300, 200, 200);
     fill(random(255), random(255), random(255));
  }
if (mouseButton == LEFT) {
     ellipse(mouseX, mouseY, 20, 20);
      fill(0, 0, 200);
       } else if (mouseButton == RIGHT) {
     ellipse(mouseX, mouseY, 20, 20);
      fill(200, 0, 0);
    }
  }
