//Dhyey Patel
//Game: Try to keep the mouth between the eyes!!!

float xpos = 0;

void setup() {
  size(800, 400);
}
void draw() {
  if (mouseX > 375 + sin(xpos) * 100 && mouseX < 475 + sin(xpos) * 100)
  {
    background(0, 255, 0);
    for (int i = 0; i < 10; i++)
    {
      ellipse(mouseX, mouseY, 10, 10);
    }
    strokeWeight(40);
  }
  else
  {
    background(255, 0, 0);
    strokeWeight(10);
  }
  noFill();
  stroke(255);
  ellipse(350 + sin(xpos) * 100, 200, 45, 45);
  ellipse(450 + sin(xpos) * 100, 200, 45, 45);
  xpos += 0.05;
}
