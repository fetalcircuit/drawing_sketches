//assigment 01 processing drawing machine
//by July Cui



void setup()
{
 size(1000, 1000);
 background(0);
 stroke(255);
 noFill();
 }



void draw ()
{
  if (mousePressed == true) {
 strokeWeight(5);

 if(mouseY>=500){
   triangle(mouseX,mouseY,0,0,0,1000);}
   else {
     triangle(1000,1000,1000,0,mouseX,mouseY);}
}

  for (int r = 10;r<1500; r=r+100)
{
  line(0,r,r,1000);
  line(r,0,1000,r);
  stroke(255);
}
}
