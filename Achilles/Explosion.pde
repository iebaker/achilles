/*
** creating class for the explosion at the end of the laser trail, this is the entity which will be able to intercept missiles
 */

class Explosion extends Entity 
{
  private float radius = 0;

  public Explosion(float xPos, float yPos, float velocity)
  {
    super(xPos, yPos, velocity);
  }

  @Override
    public void render() 
  {
    stroke(255);
    ellipse(position.x, position.y, radius, radius);
    if (radius == 50)
    {
      world.removeEntities(this);
    }
  }

  @Override
    public void update()
  {
    if (radius < 50)
    {
      radius += vel;
    }
  }
}