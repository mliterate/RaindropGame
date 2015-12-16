class Raindrop {

  PVector loc, vel, acc;
  float diam;

  Raindrop(float x, float y) {

    loc = new PVector(x, y);
    vel = new PVector(0, random(-4, 4));
    acc = new PVector(0, .04);
    diam =20;
  }
  void display() {
    fill(0, 0, 255);
    noStroke();
    ellipse(loc.x, loc.y, diam, diam);
  }

  void fall () {
    loc.y= loc.y + vel.y;  
    vel.add(acc);
  }

  void reset() {
    loc.y = random(-height,0);
    vel.set(0, random(-4,4));
  }

  
boolean isInContactWith(PVector c) {
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