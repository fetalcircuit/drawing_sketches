void setup() {
  size(500,500);
  background(225,198,52); //calm yellow
}

void draw() {

  if(mousePressed==true){
       for(int l=0; l<500; l=l+55) { //L represents the x location on the grid!
         for(int k=0; k<500; k=k+55) { //K represents the y location
              fill(45,57,125); //blue circles
              strokeWeight(8);
              stroke(40,51,112,50);
              ellipse(l+5,k+5,35,35); //created a pattern of ellipses!
         }
        }
  } else {
    for(int l=0; l<500; l=l+55) { //L represents the x location on the grid!
         for(int k=0; k<500; k=k+55) { //K represents the y location
              fill(23,94,176); //blue
              //fill(176,46,23); //reds
              strokeWeight(6);
             // stroke(158,45,25,50); //reds
             stroke(137,174,217,50);
              ellipse(l+5,k+5,25,25); //created a pattern of ellipses!
         }
        }



  }
}  
