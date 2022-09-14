void setup(){
  size(700,500);
  background(60,127,55);
}

void draw(){ 
  boolean mv= true;
  for(int y = 500; y > -20; y = y - 25)
  {
    for(int x = 0; x < 750; x = x + 45)
  {
   if(mv == true){
     fill(36,218,80);
       triangle(x-27.5,y+2.5,x+27.5,y+2.5,x+9,y+20);
   }
   else{
     fill(36,218,80);
     triangle(x-27.5,y+2.5,x+27.5,y+2.5,x+2,y+20);
   }
   scales(x,y);
  }
  if(mv == true)
  mv = false;
  else
  mv = true;
  } 
}

void scales(int x, int y){
  int diam = 0;
  while(diam < 25){
int r = 18 + (int)(Math.random()*116);
int g = 200 + (int)(Math.random()*116);
int b = 90 + (int)(Math.random()*116);
fill(r,g,b,20);
 ellipse(x,y,diam + 31.25,diam);
  diam++;
}
  }
