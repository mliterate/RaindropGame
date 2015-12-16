class Bucket {
  PVector loc;
  int diam;

  Bucket(int tdiam) {
    diam = tdiam;
    loc = new PVector();
  }
 void update() {
    loc.set(mouseX, mouseY);
  }

 
  
  void display() {
    fill(random(100), random(20), 0);
    ellipse(loc.x, loc.y, diam, diam);
  }

 
}