float x=250;
float y=250;
float xSpeed=5;
float ySpeed=5;

void setup(){
  size(400,650);
}
void draw(){
  noStroke();
  fill(random(255),random(250),255);
  x+=xSpeed;
  if ((x)>width|| (x)<0){
  xSpeed*=-1;
  }
   y+=ySpeed;
  if ((y)>height|| y<0){
  ySpeed*=-1;
  }



if (mousePressed==true){
  fill(random(255),random(0),random(255));
  rect(x,y,(150),100);
}else{ellipse((x),(y),(100),(100));
}
}
