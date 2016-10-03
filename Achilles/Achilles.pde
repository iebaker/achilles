
Laser l;


void setup() {
  fullScreen();
  background(0);
  frameRate(60);
  
  l = new Laser(width / 2, height);

}

void draw() {
  
  if (mousePressed == true) {
    
    l.fire();
  }
  

}