class Spacecraft extends Gameobject {
  //instance variable
  int cooldown, threshold;
  boolean boostmode;
  int boostcounting;
  Spacecraft() {
    super(width/2, height/2, 0, 0, 40, #FF0000, 130,0);
    threshold=30;
    cooldown=threshold;
    boostmode=false;
    boostcounting=0;
  }

  void show() {
    image(ss, x, y, size, size);
  }

  void act() {
    super.act();
    
    
    //managing guns
    cooldown++;
    if (space&&cooldown>=threshold&& !boostmode) {
      objects.add(new Bullet());
      cooldown-=5;
    }
    if (space&&cooldown>=threshold&& boostmode){
      for (int i=0;i<20;i++){
      objects.add(new Bullet(x,y,random(-10,10),random(-10,10)));
      
      }
    }
   
    if (wkey||upkey) y-=3;
    if (skey||downkey) y+=3;
    if (akey||leftkey) x-=3;
    if (dkey||rightkey) x+=3;
    if (!upkey&&!downkey) vy=vy*0.9;
    if (!leftkey&&!rightkey) vx=vx*0.9; 
   
    //decelerate when not moving
    
    
    //boostmode
    if (boostcounting>=0){
    boostmode=true;
    boostcounting--;}else{boostmode=false;}
    

    //collision
    int i=0;
    while (i<objects.size()) {
      Gameobject obj=objects.get(i);
      if (obj instanceof EnemyBullet) {
        if (collidingWith(obj)) {
          lives--;
          objects.remove(i);
          i--;
        }
      }
      if (obj instanceof Tool) {
        if (collidingWith(obj)) {
            if (obj.index==0){textapp("hp boost!",3); lives+=5;}
            if (obj.index==1){textapp("clear enemy",3);clearenemy();}
            if (obj.index==2){textapp("power up!",3); player.boostcounting=300;}
            objects.remove(i);
            i--;
        }
      }
      if ((obj instanceof Enemies|| obj instanceof HEnemies)&& gamemode==3) {
        if (collidingWith(obj)) {
            mode=GAMEOVER;
            textapp("Your plane crashed!",3);
        }
      }
      i++;
    }


    //die
    if (lives<=0) {
      mode=GAMEOVER;
    }
  }
}
