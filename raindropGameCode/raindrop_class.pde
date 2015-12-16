class Raindrop {    //establish the class 

  PVector loc, vel, acc;   //initialize loc, vel, acc
  float diam;    //initialize diameter

  Raindrop(float x, float y) {    //create the constructer

    loc = new PVector(x, y);
    vel = new PVector(0, random(-4, 4));
    acc = new PVector(0, .04);
    diam =20;
  }
  void display() {     //create the method to display
    fill(0, 0, 255);
    noStroke();
    ellipse(loc.x, loc.y, diam, diam);
  }

  void fall () {     //create the method to fall
    loc.y= loc.y + vel.y;  
    vel.add(acc);
  }

  void reset() {     //create the method to reset
    loc.y = random(-height,0);
    vel.set(0, random(-4,4));
  }

  
boolean isInContactWith(PVector c) {     //create the function to reset if the mouse comes in contact
    float d =dist(loc.x, loc.y, c.x, c.y);
    boolean e;
    if (d < diam/2){
      e = true;
  } else {
  e = false;
}
return e;
}

}