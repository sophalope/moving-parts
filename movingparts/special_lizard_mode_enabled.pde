class Lizard {
  PImage liz;

  boolean shapehere;
  Lizard() {
    liz = loadImage("lizard.png");
  }
  
  void render() {
    background(#C0F57C);
    stroke(#2E0AC1, 120);
    fill(#F7C6FF);
    rect(0, 700, width, height);
    for (int i = 0; i< width; i = i+ 15) {
      triangle(i, 700, i+15, 700, i+7.5, 690);
    }
    image(liz, 200, 600, 400, 200);
    fill(#474EFA);
    text("special lizard mode enabled", 60, 90);
    rect(150, 210, 120, 40, 2);
    fill(#E49FFA);
    text("O H  B O Y", 160, 240);
    if (mouseX>150 && mouseX<270 && mouseY>210 && mouseY<250) {
      rect(150, 210, 120, 40, 2);
      fill(#474EFA);
      text("O H  B O Y", 160, 240);
    }
  }

  void move() {
    if (shapehere == true) {
      fill(#FC8536);
      ellipse(lzx, lzy, 80, 80);


      fill(#FC8536, 100);
      ellipse(lzx, lzy, 110, 110);
      fill(#FCBB36, 100);
      ellipse(lzx, lzy, 200, 200);
      lzy= lzy + 10;

      lzy=constrain(lzy, 0, 470);


      if (keyPressed) {
        fill(#FC8536);
        text("im alright", 150, 780);
      }
    }
    if (mousePressed && mouseX>150 && mouseX<270 && mouseY>210 && mouseY<250) {
      shapehere = true;
    }
  }
}
