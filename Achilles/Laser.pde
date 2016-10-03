class Laser {
  
  PVector origin;
  int laserDelay = 60;
  
  Laser(float xPos, float yPos) {
    
    origin = new PVector(xPos, yPos);
  
  }
  
  //will need to somehow have this method speak to the other lasers so that only the one nearest to your mouse fires unless it's
  //out of ammunition (if we have ammunition that is).
  
  void fire() {
    
    //will draw a line after a 1 second delay.  A few problems: need to hold mouse down the entire second which is not what we want.
    // and line drawing is not animated,  will need a line with dynamic end point that moves along vector between origin and mouse when clicked.
    laserDelay -= 1;
    
    if (laserDelay == 0) {
      stroke(255);
      line(origin.x, origin.y, mouseX, mouseY);
      laserDelay = 60;
    }
    
  }
    
    
    

}