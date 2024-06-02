// Huruf F
// Gambar persegi panjang pertama
int rectX1 = 420;
int rectY1 = 200;
int rectWidth1 = 50;
int rectHeight1 = 300;

// Gambar persegi panjang kedua
int rectX2 = 470;
int rectY2 = 200;
int rectWidth2 = 140;
int rectHeight2 = 50;

// Gambar persegi panjang ketiga
int rectX3 = 470;
int rectY3 = 330;
int rectWidth3 = 100;
int rectHeight3 = 50;
  
// Huruf R
// Gambar persegi panjang pertama
int rectX4 = 670;
int rectY4 = 200;
int rectWidth4 = 50;
int rectHeight4 = 300;

// Gambar persegi panjang kedua
int rectX5 = 720;
int rectY5 = 200;
int rectWidth5 = 50;
int rectHeight5 = 45;

// Gambar persegi panjang ketiga
int rectX6 = 720;
int rectY6 = 325;
int rectWidth6 = 50;
int rectHeight6 = 45;
  
// Lingkaran pertama
int circX1 = 770;
int circY1 = 285;
int circRad1 = 85;

// Lingkaran kedua
int circX2 = 765;
int circY2 = 285;
int circRad2 = 40;

// Gambar jajar genjang pertama
int parX1 = 710;
int parY1 = 370;
int parX2 = 770;
int parY2 = 370;
int parX3 = 870;
int parY3 = 500;
int parX4 = 810;
int parY4 = 500;

int moveSpeed = 5;
float scaleFactor = 1.0;
float angle = 0;

void setup() {
  size(1230, 700);
}

void draw() {
  background(220);
  noStroke();
  
  pushMatrix();
  
  translate(width/2, height/2);
  
  scale(scaleFactor);
  rotate(angle);
  
  translate(-width/2, -height/2);
  
  //Huruf F
  fill(255, 0, 0);
  drawRectangle(rectX1, rectY1, rectWidth1, rectHeight1); // Gambar persegi panjang pertama
  drawRectangle(rectX2, rectY2, rectWidth2, rectHeight2); // Gambar persegi panjang kedua
  drawRectangle(rectX3, rectY3, rectWidth3, rectHeight3); // Gambar persegi panjang ketiga
  
  //Huruf R
  drawRectangle(rectX4, rectY4, rectWidth4, rectHeight4); // Gambar persegi panjang pertama
  drawRectangle(rectX5, rectY5, rectWidth5, rectHeight5); // Gambar persegi panjang kedua
  drawRectangle(rectX6, rectY6, rectWidth6, rectHeight6); // Gambar persegi panjang ketiga
  
  drawHalfCircle(circX1, circY1, circRad1);
  fill(220);
  drawHalfCircle(circX2, circY2, circRad2);
  
  fill(255, 0, 0);
  drawParallelogram(parX1, parY1, parX2, parY2, parX3, parY3, parX4, parY4);
  
  popMatrix();
}

void drawRectangle(int x, int y, int width, int height) {
  rect(x, y, width, height);
}

void drawHalfCircle(float x, float y, float radius) {
  float startAngle = PI + HALF_PI;
  float endAngle = TWO_PI + HALF_PI;

  arc(x, y, radius * 2, radius * 2, startAngle, endAngle);
}

void drawParallelogram(float x1, float y1, float x2, float y2, float x3, float y3, float x4, float y4) {
  quad(x1, y1, x2, y2, x3, y3, x4, y4);
}

void keyPressed() {
  // Translasi
  if (key == 'w' || key == 'W') {
    rectY1 -= moveSpeed; // Gerak ke atas
    rectY2 -= moveSpeed;
    rectY3 -= moveSpeed;
    rectY4 -= moveSpeed;
    rectY5 -= moveSpeed;
    rectY6 -= moveSpeed;
    circY1 -= moveSpeed;
    circY2 -= moveSpeed;
    parY1 -= moveSpeed;
    parY2 -= moveSpeed;
    parY3 -= moveSpeed;
    parY4 -= moveSpeed;
  } else if (key == 's' || key == 'S') {
    rectY1 += moveSpeed; // Gerak ke bawah
    rectY2 += moveSpeed;
    rectY3 += moveSpeed;
    rectY4 += moveSpeed;
    rectY5 += moveSpeed;
    rectY6 += moveSpeed;
    circY1 += moveSpeed;
    circY2 += moveSpeed;
    parY1 += moveSpeed;
    parY2 += moveSpeed;
    parY3 += moveSpeed;
    parY4 += moveSpeed;
  } else if (key == 'a' || key == 'A') {
    rectX1 -= moveSpeed; // Gerak ke kiri
    rectX2 -= moveSpeed;
    rectX3 -= moveSpeed;
    rectX4 -= moveSpeed;
    rectX5 -= moveSpeed;
    rectX6 -= moveSpeed;
    circX1 -= moveSpeed;
    circX2 -= moveSpeed;
    parX1 -= moveSpeed;
    parX2 -= moveSpeed;
    parX3 -= moveSpeed;
    parX4 -= moveSpeed;
  } else if (key == 'd' || key == 'D') {
    rectX1 += moveSpeed; // Gerak ke kanan
    rectX2 += moveSpeed;
    rectX3 += moveSpeed;
    rectX4 += moveSpeed;
    rectX5 += moveSpeed;
    rectX6 += moveSpeed;
    circX1 += moveSpeed;
    circX2 += moveSpeed;
    parX1 += moveSpeed;
    parX2 += moveSpeed;
    parX3 += moveSpeed;
    parX4 += moveSpeed;
  }
  
  // Skala/Zoom
  if (key == '+') {
    scaleFactor += 0.05;
  }
  if (key == '-') {
    scaleFactor -= 0.05;
    if (scaleFactor < 0.05) {
      scaleFactor = 0.05;
    }
  }
  
  // Rotasi
  if (keyCode == RIGHT) {
    angle += 0.01;
  }  
  if (keyCode == LEFT) {
    angle -= 0.01;
  }
}
