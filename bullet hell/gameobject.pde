class Gameobject {
  float x, y, vx, vy;
  float size;
  int lives,index;
  color c;//color
  Gameobject(float x, float y, float vx, float vy, int lives, color c, float size,int index) {
    this.x=x;
    this.y=y;
    this.vx=vx;
    this.vy=vy;
    this.size=size;
    this. c=c;
    this.lives=lives;
    this.index=index;
  }
  void act() {
    x+=vx;
    y+=vy;
  }
  void show() {
    fill(c);
    
    square(x, y, size);
  }
  boolean collidingWith(Gameobject obj) {
    return dist(obj.x, obj.y, x, y)<obj.size/2+size/2;
  }
  boolean offScreen() {
    return x<0 || x>width || y<0 || y>height ;
  }
  void explode(){
  }
}
