void setup() {
  size(500, 500);
  background(255, 255, 255);
}
int x = 250;
int y = 250;

void draw() {
  background(255);
  drawFace(100,100);
  drawFace(x, y);
  keyPressed();
  
}

void drawFace(int x, int y){
  // face
  fill(0, 200, 100);
  ellipse(x, y, 150, 150);  
  
  // eyes
  fill(255, 255, 255);
  ellipse(x+25, y-20, 25, 50); 
  ellipse(x-25, y-20, 25, 50);  
  
  // eyeballs
  fill(0, 0, 0);
  ellipse(x+25, y-15, 15, 30); 
  ellipse(x-25, y-15, 15, 30); 

  // worried mouth
  fill(255, 255, 255);
  ellipse(x, y+40, 70, 20);
}

void mouseClicked(){
 if(mouseX >= 100 && mouseY >= 100 && mouseX <= 400 && mouseY <= 400){
  drawFace(int(random(100,400)),int(random(100,400)));
 }
}

void keyPressed(){
 if(keyCode == UP){
  y = y - 5;
 }
 if(keyCode == DOWN){
  y = y + 5;
 }if(keyCode == RIGHT){
  x = x + 5;
 }if(keyCode == LEFT){
  x = x - 5;
 }
}


