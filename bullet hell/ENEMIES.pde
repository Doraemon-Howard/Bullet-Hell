class Enemies extends Gameobject {
  private int framesincebirth;
  PImage show;
  
  Enemies() {
    super(random(width), 25, 0, random(0,8), 3, color1[(int)random(0,6)], random(80,130),(int) random(0, 5));
    framesincebirth=0;
    
  }
  void show() {
    if (index==0) show=ene1;
    if (index==1) show=ene2;
    if (index==2) show=ene3;
    if (index==3) show=ene4;
    if (index==4) show=ene5;
    image(show, x, y, size, size);
  }
  void act() {
    super.act();
    framesincebirth++;

    //shoot
    if (framesincebirth%20==0) objects.add(new EnemyBullet(x, y, 0, 8));

    //collisions
    int i=0;
    while (i<objects.size()) {
      Gameobject obj=objects.get(i);
      if (obj.offScreen() && ! (obj instanceof Spacecraft)) {
        objects.remove(i); 
        i--;
      }
      if (obj instanceof Bullet) {
        if (collidingWith(obj)) {
          lives--;          
        }
      }
      i++;
    }

    //dies
  }

  void explode() {
    super.explode();
    //generate a sets of squares
    for (int i=0; i<20; i++) {
      objects.add(new Explosion(x, y, random(-10, 10), random(-10, 10), c));
    }
  }
}
