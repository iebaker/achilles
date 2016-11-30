World world;

void setup() {
  size(800, 600);

  frameRate(60);

  world = new World();
}

void draw() {
  background(0);
  world.update();
  world.render();
}

void mousePressed() {
  world.fireLaserAt(mouseX, mouseY);
}