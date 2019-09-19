float spacing, x, y, diameter;

void setup() {
  size (620, 620);
  background(70,72,108);
  spacing = width/6;
}

void draw() {
  noStroke();
  translate(width/6, width/6);
  
 for (int i=0; i<5; i++) {
   for (int j=0; j<5; j++) {
   fill (246,144,137);
   if (mouseX < mouseY)
   fill (189,219,215);
   x = i*spacing;
   y = j*spacing;
   diameter = random(1,100);
   ellipse(x, y, diameter, diameter);
   }
 }
}
