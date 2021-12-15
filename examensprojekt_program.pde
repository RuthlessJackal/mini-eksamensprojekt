int state;

TextBox e;
ButtonCircle button1;
void setup(){
size(600,200);
e = new TextBox(100,100,300,40);
 button1 = new ButtonCircle(425, 123, 30, color(0), color(255));
 state = 0;
}

void draw(){
  background(100,100,150);
  if(state == 0) {
         fill(0);
     text("Indsæt navn:",50,50);
     e.draw();
     button1.draw();
  }
  if (state == 1) {
   fill(0);
   text("Spørgsmål 1: hvad er 2 + 2?",50,50);
   e.draw();
   button1.draw();
  }
  if (state == 2) {
   fill(0);
   text("Spørgsmål 2: hvad er 0 + 0",50,50);
   e.draw();
   button1.draw();
  }
  if (state == 3) {
   fill(0);
   text("Spørgsmål 3: hvad er 0 + 1?",50,50);
   e.draw();
   button1.draw();
  } 
  if (state == 4) {
   fill(0);
   text("Spørgsmål 4: hvad er 1 + 1?",50,50);
   e.draw();
   button1.draw();
  }
  if (state == 5) {
   fill(0);
   text("Nu er du færdig med testen og kan lukke programmet.",10,50);
  }
}

void keyPressed() {
  e.update();
}

void mousePressed() {
  print(state);
  e.Pressed();
  if (button1.overCircle()) {
   if (state == 0) {
     
     state += 1;
   }
   else if (state == 1) {
     
     state += 1;
   }
   else if (state == 2) {
     
     state += 1;
   }
   else if (state == 3) {
     
     state += 1;
   }
   else if (state == 4) {
     
     state += 1;
   }
   else if (state == 5) {
     
   }
  }
}
