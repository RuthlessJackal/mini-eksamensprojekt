class ButtonBase{
 float posX, posY, diameter;
 
ButtonBase(float posX, float posY, float diameter) {
    this.posX = posX;
    this.posY = posY;
    this.diameter = diameter;
 }
 
boolean overCircle() {
    float disX = posX - mouseX;
    float disY = posY - mouseY;
    if (sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
      return true;
    } else {
      return false;
    }
  }
}
