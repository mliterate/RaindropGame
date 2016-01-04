class Raindrop {    //establish the class 

  PVector loc, vel, acc;   //initialize loc, vel, acc
  float diam;    //initialize diameter
PImage apple4;
  Raindrop(float x, float y) {    //create the constructer

    loc = new PVector(x, y);
    vel = new PVector(0, random(-4, 4));
    acc = new PVector(0, .04);
    diam =20;
  apple4 =loadImage("apple4.png");
}
  void display() {     //create the method to display
    fill(255, 0, 0);
    noStroke();
    ellipse(loc.x, loc.y, diam, diam);

image(apple4,loc.x,loc.y,30,30);
}

  void fall () {     //create the method to fall
    loc.y= loc.y + vel.y;  
    vel.add(acc);
  }

  void reset() {     //create the method to reset
    loc.y = random(-height,0);
    vel.set(0, random(-4,4));
  }

  
boolean isInContactWith(Bucket b) {     //create the function to reset if the mouse comes in contact
    boolean e;
    if(loc.dist(b.loc) < diam/2 + b.diam/2){
 
      e = true;
  } else {
  e = false;
}
return e;
}

}