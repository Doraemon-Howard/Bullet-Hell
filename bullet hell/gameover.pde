void gameover() {
  image(gobg,400,400,800,800);;
  fill(red);
  textSize(100);
  text("GameOver",400,400);
  text("Your Score: "+score,400,500);
}
void gameoverClicks() {
  mode=INTRO;
}
