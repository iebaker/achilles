World world;

void setup() {
  size(800, 600);
  background(0);
  frameRate(60);
  
  world = new World();
}

void draw() {
  world.update();
  world.render();
}

void mousePressed() {
  world.fireLaserAt(mouseX, mouseY);
}