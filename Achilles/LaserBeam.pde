/* 
 * Entity Class representing the laser projectile that is fired.  
 * Extends over a duration and bulbs out at the end of projectile path.  Takes target from Laser
 */

class LaserBeam extends Entity {
  PVector target;

  public LaserBeam(float xPos, float yPos, float targetX, float targetY) {
    super(xPos, yPos);
    target = new PVector(targetX, targetY);
  }

  @Override
    public void render() {
    stroke(255);
    line(position.x, position.y, target.x, target.y);
  }

  @Override
    public void update() {
  }
}