void option(){
  image(selected,400,400,800,800);
  text("Menu",400,100);
  text("Mode: ",100,200);
  rectButton("Easy",250,200,100,50,36);
  rectButton("Normal",350,200,100,50,36);//you lose a life when you let an ememy pass
  rectButton("Hard",450,200,100,50,36);
  text("Battle Field:",100,350);
  rectButton(bg1, 250,350,100,100);
  rectButton(bg2, 350,350,100,100);
  rectButton(bg3, 450,350,100,100);
  text("Music: ",100,450);
  rectButton("1",250,450,100,100,60);
  rectButton("2", 350,450,100,100,60);
  rectButton("3",450,450,100,100,60);
  rectButton("4",550,450,100,100,60);
  rectButton("5",650,450,100,100,60);
  rectButton(returnicon,50,50,50,50);
}

void optionClicks(){
  if (mouseX>25 && mouseX<75 && mouseY>25 && mouseY<75) mode=INTRO;
  if (mouseX>200 && mouseX<300 && mouseY>175 && mouseY<225) {gamemode=1; textapp("Easy Mode",4);}
  if (mouseX>300 && mouseX<400 && mouseY>175 && mouseY<225) {gamemode=2; textapp("Normol Mode: you lose a life when you let an ememy pass", 4);}
  if (mouseX>400 && mouseX<500 && mouseY>175 && mouseY<225) {gamemode=3; textapp("Hard Mode: you die if you collide with an enemy",4);}
   if (mouseX>200 && mouseX<300 && mouseY>300 && mouseY<400) selected=bg1;
  if (mouseX>300 && mouseX<400 && mouseY>300 && mouseY<400) selected=bg2;
  if (mouseX>400 && mouseX<500 && mouseY>300 && mouseY<400) selected=bg3;
  if (mouseX>200 && mouseX<300 && mouseY>400 && mouseY<500) {selectedmusic.pause(); selectedmusic=background; selectedmusic.play();}
  if (mouseX>300 && mouseX<400 && mouseY>400 && mouseY<500){selectedmusic.pause(); selectedmusic=background1; selectedmusic.play();}
  if (mouseX>400 && mouseX<500 && mouseY>400 && mouseY<500) {selectedmusic.pause();selectedmusic=background2;selectedmusic.play();}
  if (mouseX>500 && mouseX<600 && mouseY>400 && mouseY<500) {selectedmusic.pause();selectedmusic=background3;selectedmusic.play();}
  if (mouseX>600 && mouseX<700 && mouseY>400 && mouseY<500) {selectedmusic.pause();selectedmusic=background4;selectedmusic.play();}
  
  if (mouseX>25 && mouseX<75 && mouseY>25 && mouseY<75) mode=INTRO;
    
  
  
  
}
