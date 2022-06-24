class Explosion extends Gameobject {
  Explosion(float x, float y, float vx, float vy, color c) {
    super(x, y, vx, vy, 1000, c, random(4, 15),0);
  }
  void act() {
    super.act();
  }
  void show() {
    super.show();
  }
}
