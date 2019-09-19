/* @pjs preload="index.png","proxy.png","angry.png"; */

PImage img2;
PImage img;
PImage img3;

void setup() {
  size(2000, 1000);
    img = loadImage("index.png");
  img.resize(500,0);
img2 = loadImage("proxy.png");
  img2.resize(2000,1000);
    background(img2);
    img3 = loadImage("angry.png");
  img3.resize(500,0);

}

void draw() {
  if (mousePressed) {
    image(img3, mouseX, mouseY);
    } else
  image(img, mouseX, mouseY);
}
