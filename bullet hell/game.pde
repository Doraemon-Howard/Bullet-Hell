void game() {
  fill(darkblue, 100);
  rect(400,400,800,800);
  addObjects();
  gameEngine();
  debug();
  textSize(24);
  text("FPS: "+ (int)frameRate, 50,50);
  text("Lives: "+player.lives, 750, 100);
  text("enemy defeated: "+score, 700, 150);
  rectButton(pauseicon,100,100,50,50);
  
  if (textApp>0){
    textSize(100);
    fill(red);
    text(textapp,400,400);
   textApp--; 
}
  
  
}

void addObjects() {
  //stars
  objects.add(new Star());
  //enemies

  if (frameCount%30==0) objects.add(new Enemies());
  if (frameCount%50==0) objects.add(new HEnemies());
  if (frameCount%160==0) objects.add(new Tool());
}


void gameEngine() {
  int i=0;
  while (i<objects.size()) {
    Gameobject o=objects.get(i);
    if (o.lives<=0) {
      if (o instanceof Enemies||o instanceof HEnemies){
            o.explode();
            score++;
          }
      objects.remove(i);
    } else {
      o.act();
      o.show();
      i++;
    }
  }
}

void debug() {
}


void clearenemy(){
  int i=0;
  while (i<objects.size()) {
    Gameobject o=objects.get(i);
    if (o instanceof Enemies|| o instanceof HEnemies){
        o.explode();
        objects.remove(i);
        i--;
      }
      i++;
  }
}


void gameClicks() {
  if (mouseX>75&&mouseX<125&&mouseY>75&&mouseY<125){
    mode=PAUSE;
  }
}
