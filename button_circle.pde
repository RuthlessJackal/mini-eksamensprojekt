// base består af felter og metoder
// basens konstruktør kaldes via super(...), fx super(posX, posY, farve, hover);

class ButtonCircle extends ButtonBase {
  color farve, hover;

  ButtonCircle(float posX, float posY, float diameter, color f, color h) {
    super(posX, posY, diameter);
    farve = f;
    hover = h;
  }

  void draw() {
    noStroke();
    if (overCircle())
      fill(hover);
    else
      fill(farve);
    ellipse(posX, posY, diameter, diameter);
  }
}
