import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//star wars
//Howard Zhu
//Block 2-4
//May.25


//color pallette
color pink =#FFC0CB;
color black =#000000;
color cyan =#00FFFF;
color orange= #FFA500;
color yellow= #FFFF00;
color green= #00FF00;
color red= #FF0000;
color blue =#0000FF;
color white =#FFFFFF;
color grey= #7C7A7A;
color purple= #800080;
color darkblue=#000026;

//mode framework
int mode;
final int INTRO=1;
final int GAME=2;
final int PAUSE=3;
final int GAMEOVER=4;
final int OPTION=5;
boolean space, upkey, downkey, wkey, skey, leftkey, rightkey, akey, dkey;
ArrayList<Gameobject> objects;
Spacecraft player;
PImage introbg, ss, ene1, ene2, ene3, ene4, ene5,gobg,pauseicon,returnicon,first_aid,bomb,machine_gun,pausebg;
int score;
int maxnumofene, numofenedefeated;
PImage bg1,bg2,bg3,selected;
PFont font;
color[] color1;
int gamemode;
int size1;
int textApp;
String textapp;
//sound variables
Minim minim;
AudioPlayer background,background1,background2, background3,background4,background5,selectedmusic;




void setup() {
  size(800, 800);
  imageMode(CENTER);
  rectMode(CENTER);
  textAlign(CENTER, CENTER);
  objects=new ArrayList<Gameobject>();
  introbg=loadImage("maxresdefault.jpg");
  mode=1;
  player=new Spacecraft();
  objects.add(player);
  ss=loadImage("spacecraft.png");
  ene1=loadImage("ene1.png");
  ene2=loadImage("ene2.png");
  ene3=loadImage("ene3.png");
  ene4=loadImage("ene4.png");
  ene5=loadImage("ene5.jpg");
  gobg=loadImage("Best-games-with-fighter-jets.jpg");
  pauseicon=loadImage("pause.png");
  returnicon=loadImage("return.png");
  first_aid=loadImage("4849801.png");
  bomb=loadImage("th_fg.png");
  machine_gun=loadImage("265868.png");
  bg1=loadImage("video-games-battlefield-1-white-red-wallpaper.jpg");
  bg2=loadImage("battlefield-1-soldier-plane-2019-8k-lw.jpg");
  bg3=loadImage("samoliot-nebo-poliot-2.jpg");
  score=0;
  pausebg=loadImage("360_F_354976694_j2DboulEKnvLHQVz0RH02UjZsfj3jnBI.jpg");
  size1=10;
  gamemode=1;
  selected=bg1;
  textApp=0;
  textapp="0";
  
  //minim initialization
  minim=new Minim(this);
  background=minim.loadFile("PUBG Theme OST.mp3");
  background1=minim.loadFile("Background music FREE DOWNLOAD (313).mp3");
  background2=minim.loadFile("Powerful-Trap-.mp3");
  background3=minim.loadFile("Enigma-Long-Version-Complete-Version.mp3");
  background4=minim.loadFile("alex-productions-extreme-trap-racing-music-power.mp3");
  //background5=minim.loadFile("
  selectedmusic=background;
  //background1=minim.loadFile("Background music FREE DOWNLOAD (189).wav");
  font=createFont("HeadlinerNo.45 DEMO.ttf",200);
  textFont(font);
  
  color1=new color[7];
  color1[0]=yellow;
  color1[1]=blue;
  color1[2]=green;
  color1[3]=pink;
  color1[4]=red;
  color1[5]=orange;
  color1[6]=purple;


}


void draw() {
  if (mode==INTRO) {
    intro();
  } else if (mode==GAME) {
    game();
  } else if (mode==PAUSE) {
    pause();
  } else if (mode==GAMEOVER) {
    gameover();
  } else if (mode==OPTION) {
    option();
  } else {
    println("Error: mode ="+mode);
  }
}
