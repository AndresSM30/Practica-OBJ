PShape ball;
PImage txtr;
float theta;

void setup() {
  size (500, 500, P3D);
  txtr = loadImage("—Pngtree—background texture_3578697.png");
  ball = loadShape("carro.obj");
  ball.setTexture(txtr); //attach texture to the 3D shape
}


void draw () {
  background (255);
  //lights();

  pushMatrix();
  translate (width/2, height/2);
  rotate(theta);
  rotateY(theta/2);
  scale (10);
  shape (ball);
  popMatrix();

  theta+=.01; //increment angle
}
