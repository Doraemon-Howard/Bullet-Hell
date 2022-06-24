class Star extends Gameobject{
  //instance variables

  
  //constructor
  Star(){
      super(random(width),0,0,0,(int)random(1,5),white,(int)random(5,10),0 );
    vy=size;
  }
  void act(){
    super.act();
    if(y>=height){
      lives=0;;
    }
  }
  
  void show(){
    fill(255);
    square(x,y,size);
  }
  }
