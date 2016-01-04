PImage apple;
PImage apple2;
PImage apple3;
int count = 100;
PVector mouse;   //declare a P
ArrayList<Raindrop> drop = new ArrayList<Raindrop>(); //declare a new Raindrop called r
Bucket b;
int score = 0;

// On your own, create an array of Raindrop objects instead of just one
// Use the array instead of the single object
// You can start out by just using the single Raindrop as you test


void setup() {
  size(1200, 800);
  mouse = new PVector();                //initialize mouse PVector. value is irrelevant since it will be set at the start of void draw(){}
  b = new Bucket(100);
apple = loadImage("apple.gif");
apple2 = loadImage("apple2.jpg");
apple3 = loadImage("apple.png");
imageMode(CENTER);

}

void draw() {
 
  if(frameCount < 50){
   background(0);
  image(apple,width/2,height/2,width,height);
   textSize(50);
   textAlign(CENTER);
   text("WELCOME TO APPLE PICKERS",525,400);
   text("COLLECT 100 APPLES TO WIN",525,800);
  }
   
 if(frameCount > 50){ 
  image(apple2,width/2,height/2,width,height);
  
   mouse.set(mouseX, mouseY);             //set value of mouse as mouseX,mouseY

  b.update();
  b.display();
   image(apple3,mouseX,mouseY,100,100);
drop.add(new Raindrop(random(width), random(-20,0)));
  for (int i = drop.size()-1; i>=0; i--) {
   Raindrop r = drop.get(i);
    r.fall();         //make the raindrop fall. It should accelerate as if pulled towards the ground by earth's gravity
    r.display();      //display the raindrop
    if (r.isInContactWith(b)) {      //check to see if the raindrop is in contact with the point represented by the PVector called mouse
      drop.remove(i);                         //if it is, reset the raindrop
   score = score + 1;
  
}
    if (r.loc.y > height + r.diam/2) {     //check to see if the raindrop goes below the bottom of the screen
      drop.remove(i);                           //if it does, reset the raindrop
    }
  }

fill(0,255,255);
textSize(100);

text(score,600,400);

 }

if(score>100){
  background(0);
  image(apple,width/2,height/2,width,height);
   textSize(50);
   textAlign(CENTER);
   text("YOU WIN",525,400);
}

}