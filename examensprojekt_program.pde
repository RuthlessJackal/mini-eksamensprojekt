TextBox e;
ButtonCircle button1;
void setup(){
size(1000,1000);
e = new TextBox(100,100,300,40);
 button1 = new ButtonCircle(425, 123, 30, color(0), color(255));
}

void draw(){
  background(100,100,150);
  e.draw();
  button1.draw();
}

void keyPressed() {
  e.update();
}

void mousePressed() {
  e.Pressed();
  if (button1.overCircle()) {
   
  }
}
