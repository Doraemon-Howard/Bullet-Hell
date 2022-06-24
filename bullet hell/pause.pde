void pause(){
  image(pausebg,400,400,800,800);
  textSize(100);
  fill(red);
  text("Pause",400,200);
  
  text("Click to back to the Game",400,400);
}

void pauseClicks(){
  mode=GAME;
}
