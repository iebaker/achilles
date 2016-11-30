/**
 * Entities are anything that exists in a game World. All entities must implement 
 * update() and render() methods which will be called once per frame by the world
 */
abstract class Entity {
  protected PVector position;
  protected float vel;

  public Entity(float xPos, float yPos, float velocity) {
    position = new PVector(xPos, yPos); 
    vel = velocity;
  }

  public PVector getPosition() {
    return position;
  }

  public abstract void update();
  public abstract void render();
}