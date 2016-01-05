class Bucket {    //create the class bucket
  PVector loc;   //declare variables loc and diam
  int diam;

  Bucket(int tdiam) {   //create the constructor such that you can enter a diameter
    diam = tdiam;   //set what is entered equal to the diam
    loc = new PVector();   //create a new pvector
  }
 void update() {   //create the method update
    loc.set(mouseX, mouseY);   //set the loc to mouse location
  }

 
  
  void display() {   //create the method display
    fill(random(100), random(20), 0);   //set fill
    ellipse(loc.x, loc.y, diam, diam);   //display the bucket 
  }
  
  
 
 
}