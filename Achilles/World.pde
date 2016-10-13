import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * World represents the entire running world of the game. It should expose functionality
 * to the base Achilles app so that it can respond to input, update itself, and draw itself
 */
class World {
  private Set<Entity> entities = new HashSet<Entity>();
  private Set<Entity> entering = new HashSet<Entity>();
  private Set<Entity> deleting = new HashSet<Entity>();
  private List<Laser> lasers = new ArrayList<Laser>();

  public World() {
    lasers.add(new Laser(0, height));
    lasers.add(new Laser(width / 2, height));
    lasers.add(new Laser(width, height));
    entering.addAll(lasers);
  }

  public void addEntities(Entity... newEntities) {
    entering.addAll(Arrays.asList(newEntities));
  }

  public void removeEntities(Entity... oldEntities) {
    deleting.addAll(Arrays.asList(oldEntities));
  }

  public void update() {
    entities.addAll(entering);
    entities.removeAll(deleting);

    deleting.clear();
    entering.clear();
    for (Entity entity : entities) {
      entity.update();
    }
  }

  public void render() {
    for (Entity entity : entities) {
      entity.render();
    }
  }

  public void fireLaserAt(float targetX, float targetY) {
    Collections.sort(lasers, new LaserDistanceComparator(targetX, targetY));
    for (Laser laser : lasers) {
      if (laser.hasAmmunition()) {
        laser.fireAt(targetX, targetY); 
        break;
      }
    }
  }
}