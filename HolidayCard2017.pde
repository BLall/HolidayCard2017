void setup () {
 size(1200,1000);
 background(182,209,255);
 setsnow();
 //setelf();
}
void mouseClicked() {
  setelf();
}
  

house phill = new house();
ArrayList<Snow> snow = new ArrayList<Snow>();
ArrayList<BingBong> Particles = new ArrayList<BingBong>();
int count = 0;
PImage elf;
public void setsnow(){
  for(int i=0;i< 600;i++){
    snow.add(new Snow());
  }
}
public void Snow(){
  
  for(Snow s: snow){
    s.display();
    if(s.getYvar()>1000)
      s.setYvar(0);
    if(s.getXvar()<0||s.getXvar()>1200)
      s.setXvar((int)(Math.random()*1200));
    s.fall();
  }
}

public void phill(){
  if(Particles.size()>0)
    if(Particles.get(count-1).getYvars()>500)
      Particles.get(count-1).Yvar();
    
}

public void setelf() {
    Particles.add(new BingBong((int)(Math.random()*5)));
    count++;
    elf = Particles.get(count-1).getBingBong();
  }

void draw () { 
  background(182,209,255);
  Snow(); 
  if(Particles.size()>0){
    Particles.get(count-1).setYvars();
   image(elf,(float)Particles.get(count-1).getXvars(),Particles.get(count-1).getYvars());
  }
  phill.sethouse();
  phill();
 }
 public class BingBong{
int size = 0;
int yvar =  0;
int xvar = 0;
  public BingBong (int sizeM){
    size=sizeM;
    xvar = 800;
  }
  
  public PImage getBingBong(){
    PImage elf;
    //String url = "http://cliparting.com/wp-content/uploads/2016/08/Christmas-girl-elf-clipart-archives-hd-christmas-pictures-image-2.png";
    elf = loadImage("DrPhil-1280x720px-Shareimage.jpg");
    return elf;
  }
  
  public int getXvars(){
    return xvar;
  }
  
  
  public int getYvars(){
    return yvar;
  }

  public void setYvars(){
     yvar += 2; 
  }
 
   public void Yvar(){
   yvar = 600;
   xvar = 500;
   display();
   }

  public void display(){
    textSize(50);
    fill(13,205,0);
    text("Merry Christmas",300,500);
    PImage dogg;
    dogg= loadImage("Fish-Hat.jpg");
    image(dogg,400,300);
  
  }





















}
public class house{
PImage Brick;
  
  public house(){
  }

  public void sethouse(){
    //house
    fill(255);
    rect(0,800,1200,200);
    fill(232,128,12);
    rect(800,400,600,400);
    fill(255);
    rect(900,500,80,60);
    fill(0);
    rect(900,500,10,50);
    rect(980,500,10,60);
    rect(900,500,80,10);
    rect(900,550,80,10);
    rect(940,500,5,60);
    rect(900,530,80,5);
    fill(230,233,255);
    rect(800,320,150,80);
    fill(0);
    rect(780,310,190,10);
    fill(127,43,0);
    rect(1000,600,100,200);
    fill(169,157,205);
    ellipse(1090,700,10,10);
    
    //tree
    fill(89,65,1);
    rect(150,750,20,60);
    fill(5,103,35);
    triangle(160,755,160,690,90,770);
    triangle(160,755,160,690,230,770);
    triangle(160,710,160,650,100,720);
    triangle(160,710,160,650,220,720);
    triangle(160,660,160,620,110,675);
    triangle(160,660,160,620,210,675);
    
  }












}
public class Snow{

  int xvar;
  int yvar;
  float size = 10;
  float xdirect = (random(-4,4));
  float ydirect = (random(1,4));
  PVector location;
  PVector velocity;
  
  public Snow(){
    yvar=-200;
    xvar= (int)(Math.random()*1200);
    location = new PVector(xvar,yvar); 
    velocity = new PVector(xdirect,ydirect);
}
  
  public void display(){
    fill(255);
    ellipse(location.x,location.y,10,10);
  }
  
  
  public void fall(){
    location.add(velocity);
  }
  
  public int getXvar(){
    return (int)location.x;
  }
  
  public void setXvar(int i){
    location.x = (float)i;
  }
  
  public int getYvar(){
    return (int)location.y;
  }
  
  public void setYvar(int i){
     location.y = (float)i;
  }

  public float getsize(){
    return size;
  }












}
