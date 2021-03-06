/* 
 * Entity Class representing the laser projectile that is fired.  
 * Extends over a duration and bulbs out at the end of projectile path.  Takes target from Laser
 */

class LaserBeam extends Entity {
  private PVector target;
  private int countdown = 60;
  private boolean sustain = true;


  public LaserBeam(float xPos, float yPos, float velocity, float targetX, float targetY) {
    super(xPos, yPos, velocity);
    target = new PVector(targetX, targetY);
  }

  @Override
    public void render() {
    stroke(255);
    line(position.x, position.y, target.x, target.y);
    Explosion xp = new Explosion (target.x, target.y, 1);
    world.addEntities(xp);

    if (countdown == 0) {
      world.removeEntities(this);

      countdown = 60;
      sustain = true;
    }
  }

  @Override
    public void update() {
    if (sustain == true) {
      countdown--;
      if (countdown == 0) {
        sustain = false;
      }
    }
  }
}