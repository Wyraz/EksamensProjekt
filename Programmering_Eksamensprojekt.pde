import controlP5.*;
 hhhyg
ControlP5 cp5;
SaveButton saveButton;

float r = 0;
float g = 0;
float b = 0;
float strokeWeightValue = 2; // Startværdi for stregtykkelse

void setup() {
  size(800, 800);
  background(255);
  
  cp5 = new ControlP5(this);

  cp5.addSlider("strokeWeightSlider")
    .setPosition(750, 750)
    .setSize(20, 50) // Indstil bredden og højden af slideren
    .setRange(1, 10)  // Definer sliderens værdiområde for stregtykkelse
    .setValue(strokeWeightValue) // Startværdi
    .setLabel("Stregtykkelse") // Etiket for slideren
    .setSliderMode(Slider.FLEXIBLE);
    
  saveButton = new SaveButton(width - 80, height - 750, 70, 20, "Gem");
}

void draw() {
  stroke(r, g, b);
  strokeWeight(strokeWeightValue); // Indstil stregtykkelse

  if (mousePressed) {
    line(pmouseX, pmouseY, mouseX, mouseY);
  }

  // Vis gem-knappen
  saveButton.display();
}

// Funktion kaldet, når slideren for stregtykkelse ændres
void strokeWeightSlider(float value) {
  strokeWeightValue = value;
  println("Stregtykkelse: " + strokeWeightValue);
}

void mousePressed() {
  // Tjek om musen er over gem-knappen
  if (saveButton.isClicked()) {
    // Gem det tegnede billede lokalt
    save("tegning.png");
    println("Tegning gemt lokalt: tegning.png");
  }
}
