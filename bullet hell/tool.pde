class Tool extends Gameobject{
  
  Tool(){
    super(random(0,width),0,0,random(4,10),1,#000000,40,int(random(0,3)));
  }
  void act(){
    super.act();
    
  }
  void show(){
    if (index==0) {
      image(first_aid,x,y,size,size);
    }
    if (index==1){
      image(bomb,x,y,size,size);
    }
    if (index==2){
      image(machine_gun,x,y,size,size);
    }
  }
}
