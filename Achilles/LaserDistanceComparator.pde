import java.util.Comparator;

/**
 * Comparator implementation that ranks Laser entities by how close they are to a 
 * target point. Used by the World to determine which Laser to fire at a target.
 */
class LaserDistanceComparator implements Comparator<Laser> {
  private PVector target;
  
  public LaserDistanceComparator(float targetX, float targetY) {
    target = new PVector(targetX, targetY);
  }
  
  @Override
  public int compare(Laser laser1, Laser laser2) {
    float distanceToLaser1 = PVector.dist(laser1.getPosition(), target);
    float distanceToLaser2 = PVector.dist(laser2.getPosition(), target);
    
    if (distanceToLaser1 < distanceToLaser2) {
      return -1; 
    } else if (distanceToLaser1 == distanceToLaser2) {
      return 0;
    } else {
      return 1; 
    }
  }
}