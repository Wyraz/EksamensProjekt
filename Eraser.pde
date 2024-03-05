class Eraser {
  float x, y, w, h;
  String label;

//float x, y, w, h;: Disse variabler repræsenterer henholdsvis x- og y-koordinaterne for viskelæderknappen og dens bredde og højde.
  Eraser(float x, float y, float w, float h, String label) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.label = label;
  }

  void display() {
    fill(eraserColor);
    rect( width - 300, 620, w, h);
    fill(0);
    textAlign(CENTER, CENTER);
    text(label, width - 300, 620, w, h);
  }

  boolean isMouseOver() {
    return mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h;
  }

  boolean isClicked() {
    return isMouseOver() && mousePressed;
  }
}
