int y = 0;
int x = 0;

int inc = 5;

void setup() {

size(700, 700);

smooth();

fill(250);

}

void draw() {

background(0, 0, 0);
triangle(mouseX,mouseY,mouseX-15,mouseY+30,mouseX+15,mouseY+30);
int row = 10;
int col = 10;
for (int i = 0;i < row;i++) {   //should spawn more
  for (int j = 0; j<col ;j++){  //should spawn more/ overall 10x10 group
ellipse(x, y, 40, 40);
  }
}



x += inc;

if (x>height+110) {

inc = -5;
y= y+100;

} else if (x<-110) {

inc = 5;
y=y+100;

}
else if(y > height){
  y=0;

}
if(mousePressed){
  for(int s = mouseY; s > 0; s=s-5){
    ellipse(mouseX, s, 10, 10);
  }

}

}
