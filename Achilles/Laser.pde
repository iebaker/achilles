/**
 * Entity class representing a Laser based weapon. Fires a single laser at a target
 * after a warming up delay of a certain number of frames.
 */
class Laser extends Entity {
  private final int laserDelay = 60;
  private int ammunition = 5;
  private boolean warmingUp = false;
  private PVector target;
  private int countdown;
  
  public Laser(float xPos, float yPos) {
    super(xPos, yPos);
    countdown = laserDelay;
  }
  
  public boolean hasAmmunition() {
    return ammunition > 0; 
  }
  
  public void fireAt(float targetX, float targetY) {
    if (!hasAmmunition()) return;
    warmingUp = true;
    countdown = laserDelay;
    target = new PVector(targetX, targetY);
  }
  
  @Override
  public void update() {
    if (warmingUp) {
      countdown--;
      if (countdown == 0) {
        warmingUp = false; 
        ammunition--;
      }
    }
  }
  
  @Override
  public void render() {
    if (warmingUp) {
      fill(0, 0, 255); 
    } else {
      fill(255); 
    }
    
    noStroke();
    ellipse(position.x, position.y, 20, 20);
    if (countdown == 0) {
      stroke(255);
      line(position.x, position.y, target.x, target.y); 
    }
  }
}