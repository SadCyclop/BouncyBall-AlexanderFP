PImage DVD;

float x = 300;
float y = 300;
int picWidth = 60;
int picHeight = 30;
float xSpeed = 2;
float ySpeed = 2;
float boxPosX = 300;
float boxPosY = 300;
float boxWidth = 600;
float boxHeight = 600;
float boxWidthSpeed = 0.5;
float boxHeightSpeed = 0.5;
float radius2 = 600;

void setup(){
  size (600,600);
  DVD = loadImage("DVDlogo.png");
}

void draw()
{
  imageMode(CENTER);
  background(255,255,255);
  DVD.resize(picWidth, picHeight); 
  image(DVD, x, y);

  noFill();
  rectMode(CENTER); 
  rect(boxPosX, boxPosY, boxWidth, boxHeight);
  
  boxWidth -= boxWidthSpeed;
  boxHeight -= boxHeightSpeed;
  
  if(boxWidth < 100 || boxHeight < 100){
    boxHeightSpeed = 0;
    boxWidthSpeed = 0;       
  }

  x += xSpeed;
  y += ySpeed;

  if (x + picWidth/2 > (boxPosX + boxWidth/2)) {
    xSpeed = -abs(xSpeed);
  }
  
  if (x - picWidth/2 < (boxPosX - boxWidth/2)){
    xSpeed = abs(xSpeed);
  }

  if(y + picHeight/2 > (boxPosY + boxHeight/2)){
    ySpeed = -abs(ySpeed);
  }

  if (y - picHeight/2 < (boxPosY - boxHeight/2)) {
    ySpeed = abs(ySpeed);
  }
}
