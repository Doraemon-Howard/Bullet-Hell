class Bullet extends Gameobject {

  //constructor
  Bullet() {
    super(player.x, player.y, 0, -10, 5, #FFFF00, 5,0);
  }
  Bullet(float x, float y, float vx, float vy) {
    super(x,y,vx,vy, 5, #FFFF00, 5,0);
  }
  void act() {
    x+=vx;
    y+=vy;
  }

  void show() {
    fill(255);
    circle(x, y, size);
  }
}
