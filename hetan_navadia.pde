//Assignment 1

int z = 0;
int increase = 5;

void setup() {
  size(800, 800);
  smooth();
  fill(0);
}

void draw() {
  background(0);

  if (mousePressed == true) {
    fill(0);
    stroke(255, 0, 0);
  } else {
    background(255);
    stroke(0);
    fill(0, 0, 255);
  }

  for (int i = 0; i < height+10; i+=107) {
    rect(z, i, 50, 50 * sin(i));
  }

  stroke(255);
  strokeWeight(7);
  line(mouseX, 0, mouseX, 800);
  line(0, mouseY, 800, mouseY);

  z += increase;

  if (z > height + 110) {
    increase = -5;
  } else if (z < -110) {
    increase = 5;
  }
}
