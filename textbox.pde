class TextBox {
  int xPos = 0, yPos = 0, h = 35, w = 200;
  color background = color(160,160,180);
  color forground = color(0, 0, 0);
  color backgroundSelected = color(200, 200, 220);
  color border = color(30, 50, 30);
  boolean borderEnable = false;
  int borderWeight = 3;
  String slutText = " ";
  int textLength = 0;
  boolean selected = true;

  TextBox() {}

  TextBox(int xPos, int yPos, int bredde, int hoejde) {
    this.xPos = xPos; 
    this.yPos = yPos; 
    w = bredde; 
    h = hoejde;
  }
  
  void update() {
    if (selected) {
      if (keyCode == (int)BACKSPACE) {
        backspace();
      } else if (keyCode == 32) {
        addText(' ');
      } else {
        boolean isKeyCapitalLetter = (key >= 'A' && key <= 'Z');
        boolean isKeySmallLetter = (key >= 'a' && key <= 'z');
        boolean isKeyNumber = (key >= '0' && key <= '9');

        if (isKeyCapitalLetter || isKeySmallLetter || isKeyNumber) {
          addText(key);
        }
      }
    }
  }

  void draw() {
    if (selected) {
      fill(backgroundSelected);
    } else {
      fill(background);
    }

    if (borderEnable) {
      strokeWeight(borderWeight);
      stroke(border);
    } else {
      noStroke();
    }
    rect(xPos, yPos, w, h);
    fill(forground);
    textSize(22);
    text(slutText, xPos + (textWidth("a") / 2), yPos + h/1.3);
  }

  void addText(char text) {
    if (textWidth(slutText + text) < w) {
      slutText += text;
      textLength++;
    }
  }

  void backspace() {
    if (textLength - 1 >= 0) {
      slutText = slutText.substring(0, textLength - 1);
      textLength--;
    }
  }

  boolean overBox() {
    if (mouseX >= xPos && mouseX <= xPos + w && mouseY >= yPos && mouseY <= yPos + h) {
      return true;
    }
    return false;
  }

  void Pressed() {
    if (overBox()) {
      selected = true;
      borderEnable = true;;
    } else {
      selected = false;
      borderEnable = false;
    }
  }
}
