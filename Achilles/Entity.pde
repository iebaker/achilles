/**
 * Entities are anything that exists in a game World. All entities must implement 
 * update() and render() methods which will be called once per frame by the world
 */
abstract class Entity {
  protected PVector position;
  
  public Entity(float xPos, float yPos) {
    position = new PVector(xPos, yPos); 
  }
  
  public PVector getPosition() {
    return position; 
  }
  
  public abstract void update();
  public abstract void render();
}