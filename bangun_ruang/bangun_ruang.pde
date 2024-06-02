int angle = 0;
int angleSpeed = 1;
boolean rotasiX = false;
boolean rotasiY = false;
boolean rotasiZ = false;

void setup() {
  size(1800, 1200, P3D);
}

void draw() {
  background(220);
  
  lights();
  translate(width/2, height/2, 0);
  stroke(255, 0, 0);
  strokeWeight(2);
  
  
  pushMatrix();
  if (rotasiX) {
    // Roll
    rotateX(radians(angle));
  }
  if (rotasiY) {
    // Pitch
    rotateY(radians(angle));
  }
  if (rotasiZ) {
    // Yaw
    rotateZ(radians(angle));
  }
  angle += angleSpeed;
  
  // Gambar bola
  noFill();
  sphere(400);
  sphereDetail(30);
  
  popMatrix();
}

void keyPressed() {
  if (key == 'x' || key == 'X') {
    rotasiX = !rotasiX;
  }
  if (key == 'y' || key == 'Y') {
    rotasiY = !rotasiY;
  }
  if (key == 'z' || key == 'Z') {
    rotasiZ = !rotasiZ;
  }
  if (key == 'a' || key == 'A') {
    rotasiX = !rotasiX;
    angleSpeed *= -1;
  }
  if (key == 's' || key == 'S') {
    rotasiY = !rotasiY;
    angleSpeed *= -1;
  }
  if (key == 'd' || key == 'D') {
    rotasiZ = !rotasiZ;
    angleSpeed *= -1;
  }
}
