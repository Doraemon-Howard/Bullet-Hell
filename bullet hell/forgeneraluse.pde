void rectButton(String text, float x, float y, float w, float h, int size){
  if (mouseX>x-w/2 && mouseX<x+w/2 && mouseY > y-h/2 && mouseY <y+h/2){
  strokeWeight(10);
  stroke(red);
  fill(white);
}else {
  strokeWeight(2);
  stroke(0);
 
  fill(white);
}
  textSize(size);
  rect(x,y,w,h);//remember the mode is center
  fill(0);
  text(text,x,y);
  }
  
void rectButton(PImage pic, float x, float y, float w, float h){
if (mouseX>x-w/2 && mouseX<x+w/2 && mouseY > y-h/2 && mouseY <y+h/2){
  strokeWeight(10);
  stroke(red);
  fill(white);
}else {
  strokeWeight(0);
  stroke(0);
  fill(white);
}

  rect(x,y,w,h);//remember the mode is center
  image(pic,x,y,w,h);
}

void reset(){
  player.lives=40;
  objects=new ArrayList<Gameobject>();
  objects.add(player);
}

void textapp(String text, int time){
  textApp=time*30;
  textapp=text;
}
