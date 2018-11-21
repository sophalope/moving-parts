class Sprout{
  //color c;
  float xpos;
  float ypos;
  float xmo;
  //float xoff;
  //float yoff;
  Sprout(){
   // xoff = -5;
   // yoff = -35;
    xpos = 0;
    ypos = 0;
    xmo = 1;
  }
  
  void display(){
    fill(#D83FC7);
    line(xC, yC, xpos,ypos);
    ellipse(xpos,ypos,20,20);
  }
  
  void move(){
    float targetXc = xC;
  float da = targetXc - xpos;
  xpos += da * ease;

  float targetYc = yC-35;
  float db = targetYc - ypos;
  ypos += db * ease;
  }
  
  void breezy(){
   if(xpos == xC){
      xpos = xpos +xmo;
      if (xpos == xC + 5 || xpos == xC-10){
        xmo = xmo *(-1);
      }
    }
  }
  
}
  
