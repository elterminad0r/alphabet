//ascii printable - 33 - 126

void setup() {
  size(1600, 800);
  background(0);
}

void draw () {
  
}

void addLetter(char c) {
  float fact = (random(1) + c - 33.0) / (126.0 - 33.0);
  addLetter(fact);
}

void addLetter(float fact) {
  colorMode(HSB, 255, 255, 255);
  float x = width * fact;
  float y = random(height);
  float th = random(TWO_PI);
  float s = random(5, 8);

  pushMatrix();
  translate(x, y);
  rotate(th);
  scale(s, s);
  fill(255 * fact, 255, 255);
  text(Character.toString((char)(33 + (int)((126 - 33) * fact))), 0, 0);
  popMatrix();
}

void keyPressed() {
  switch(key) {
    case ' ':
      addLetter(random(1));
      break;
    case '\n':
      for (int i = 0; i < 100; i++) {
        addLetter(random(1));
      }
      break;
    default:
      addLetter(key);
      break;
  }
}

void mouseClicked() {
  setup();
}
