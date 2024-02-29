class SaveButton {
  float posX, posY, width, height;
  String label;

  SaveButton(float x, float y, float w, float h, String lbl) {
    posX = x;
    posY = y;
    width = w;
    height = h;
    label = lbl;
  }

  void display() {
    // Tegn en rektangel som gem-knap
    fill(150);
    rect(posX, posY, width, height);

    // Tegn teksten på knappen
    fill(0);
    textAlign(CENTER, CENTER);
    text(label, posX + width / 2, posY + height / 2);
  }

  boolean isClicked() {
    // Tjek om musen er over knappen
    return mouseX > posX && mouseX < posX + width && mouseY > posY && mouseY < posY + height;
  }
}
