int x;
int y;
int step;
int z;
int move;
int a;
int bSize;
int c;
int cStep;
float d;
float e;
float easing = 0.015;
float ease = 0.025;
int f;
int g;
float h;
float j;
float jmov;
float k;
float l;
float m;
int gstep;
float cx;
float cz;
float ca;
int fstep;
int xA;
int yA;
int xC;
int yC;
int nx;
int ny;
int evr;
float lzx;
float lzy;
boolean sprouting;
Sprout sprout1;
Sprout sprout2;
Top thetop;
Lizard lizard1;
boolean asprout;
boolean everything;
boolean special_lizard_mode;
void setup() {
  size(800, 800);
  background(#DEA5F7);
  stroke(255);
  step = 5;
  cStep = 5;
  x = 0;
  c = 200;
  y = 150;
  move = 2;
  a = 500;
  f = 2;
  g = 0;
  h=0;
  j=0;
  xA=700;
  yA = 0;
  xC=100;
  yC =100;
  nx = 200;
  ny =900;
  k=1;
  evr =0;
      lzx=400;
    lzy=0;
 // ff= 700;
 // gg = 300;
  jmov=2; 
  gstep=2;
   fstep =1;
  cx = 200;
  lizard1 = new Lizard();
  thetop = new Top();
   sprout1 = new Sprout();
   sprout2 = new Sprout();
 sprouting = false;
 //ok = loadShape("ok.svg");
 //asprout = false;
  noStroke();
   
  
}
void draw() {
  fill(#5F47C4);
  rect(0,0,height,width);
  fill(#92FAE8);
  shapeMode(CORNER);
    rect(330,360,100,40);
    fill(#AA1F98);
  text("o k a y", 360, 390);
    //shape(ok,330,360,250,150);
   if (mouseX>780 && mouseY>780){
    fill(#EAD6FF);
    rect(780,780,20,20);
    fill(#57D8AA);
    triangle(780,800,800,780,800,800);
   }
   
    if ( mouseX<430 && mouseX>330 && mouseY>360 && mouseY<400){
      fill(#E5F782);
      rect(330,360,100,40);
     fill(#967FFC);
  text("o k a y", 360, 390);}
  if (mousePressed && mouseX>780 && mouseY>780){
    special_lizard_mode = true;
  }
  if (special_lizard_mode == true){
    lizard1.render();
    lizard1.move();
  }
if (mousePressed && mouseX<430 && mouseX>330 && mouseY>360 && mouseY<400){
  everything = true;
}
if (everything == true){
  
  shapeMode(CENTER);
  //background(#DEA5F7);
 // background(#5F47C4);
  background(#31E5D5);
  //first shape
  //thetop.move();
  //pushMatrix();
 thetop.display();
// popMatrix();
 

  fill(100, x, z);
  rect(x, y, 100, 75);
  x= x+ step;

  if (x==800 || x==0) {
    step = step * (-1);
  }


  //second shape 
  fill(a, 100, z, 100);

  //bSize =  height-mouseY;
  bSize = 200;
  if (z > 780 || z < 10) {
    ellipse(z, a, bSize*0.8, bSize*1.2);
  } else {
    ellipse(z, a, bSize, bSize);
  }
  z = z + move*2;

  if (z == 800 || z == 0) {
    move = move * (-1);
  }
  ellipse(z, a, 65, 65);


  //shape4

  float targetX = z;
  float dx = targetX - d;
  d += dx * easing;

  float targetY = a;
  float dy = targetY - e;
  e += dy * easing;
  fill(100, mouseX, z);
  ellipse(d, e, 66, 66);


  line(z, a, d, e);

  float targetA = d;
  float da = targetA - l;
  l += da * ease;

  float targetB = e;
  float db = targetB - m;
  m += db * ease;
  fill(100, mouseX, z);
  ellipse(l, m, 30, 30);
  line(l, m, d, e);
  float ll = l+9;
  float mm = m+40;
  ellipse(ll, mm, 30, 30);
  line (ll, mm, d, e);
  float lm = l+9;
  float mn = m-40;
  ellipse(lm, mn, 30, 30);
  line (lm, mn, d, e);


  //BIG OVAL
  fill(#4E2BE0, 150);
  ellipse(cx, c, 200, 400);
  c = c + cStep;

  if (c == 600 || c == 200) {
    cStep = cStep * (-1);
  }
  
  float tX = cx+150;
  float dcx = tX -cz;
  cz += dcx * ease;

  float tY = c;
  float dcy = tY - ca;
  ca += dcy * ease;
    fill(cz, 100, ca,120);
  //fill(100, mouseX, z);
  ellipse(d, e, 66, 66);
  ellipse(cz,ca, 15,15);
  line(cx+100, c, cz, ca);
  line(cx-100, c, cz-300, ca);
  ellipse(cz-300,ca, 15,15);
  //line(cx+100, c, 500, 700);
 // line(c, c, 300, 400);
  fill(100, x, z);
  //5 shape 
  rect(f, g, 10, 100);

  f=f+fstep;
  // f =  (2*g )+ step;

  g = g + gstep;


  if (g==800 || g==0) {
    gstep = gstep * (-1);
    //f=f-1;
  }
  if (f==800 || f==0) {
    fstep = fstep * (-1);
    //f=f-1;
  }

  fill(#B342E0, 80);
  ellipse(h, j, 150, 150);

  h = h+jmov+1;

  if (h>0 && h<300) {
    j = j + jmov;
  } else if (h>300 && h<width) {
    j = j - jmov;  
  }
  if (j==800 || j==0 || h==800 || h==0) {
    jmov = jmov * (-1);
  }


  // DOTSS) BOYS
  for (int i = 500; i<700; i = i + 15) {
    
    k = constrain(k,20,780);
      if (mouseX>500 && mouseX<700 && mouseY>780){
  k = k-5;}
    fill(100,k,x);
    ellipse(i, k, 10, 10);
    k = k + 2;
   
   }

fill(#B342E0, 80);

  //if (k == height;

  //noFill();
  //strokeWeight(10);
  stroke(#2E0AC1, 120);
  ellipse(z, a, 110, 110);
 //int xA = 100;
 
  int xB = xA +40;
  int yB = yA;
  xC =xA + 20;
  yC = yA-40;
  triangle (xA, yA, xB, yB, xC, yC);
  int speed= 4;
  if (yA == 190 && xA>=500){
    yA=190;
  }else if (yA ==700){
    yA = 700;
  }else{
    yA= yA+2;}
 // ellipse(xA,yA,100,100);
  if (keyPressed) {
    if (key == CODED) {
      if (keyCode == RIGHT) {
        xA = xA +speed;
      }else if (keyCode == LEFT){
         xA = xA - speed;
      }
  } else if (key == ' '){
    sprouting = true;
}}

if (sprouting == true){
  sprout1.display();
    sprout1.move();
    sprout1.breezy();
    asprout = true;
} 
//else if  (asprout = true){
  //sprout2.display();
  //sprout2.move();
  //}
 // fill(#34FFFD,70);
  //rect(0,0,width, height);
  fill(#5248E0);
   
  rect(550,200,260,10);
//
fill(#CEFF1A,160);
 ellipse(nx,ny,300,300);
ny = constrain(ny,900,1000);
   if (c >=510){
     ny = ny+cStep;
   }
   
   
 //for (int i = 0; i<800; i = i + 50) {

 // }

}}
