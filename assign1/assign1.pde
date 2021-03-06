

PImage backGround,soil,life,groundHog,soldier,robot;

int soldierX,soldierY;
int lightX,lightY,lightOverX;
int robotX,robotY;
int n;


void setup() {
	size(640, 480, P2D);
	backGround=loadImage("bg.jpg"); //put backGround in
  soil=loadImage("soil.png"); //put soil in
  life=loadImage("life.png"); //put life in
  groundHog=loadImage("groundhog.png"); //put groundHog in
  
  //robot
  robot=loadImage("robot.png"); //put robot in
  robotX=floor(random(240,580)); //put robot on random place in each floor 
  robotY=floor(random(2,5))*80; //put robot on random floor

  //soldier
  soldier=loadImage("soldier.png"); //put soldier in
  soldierX=0; //start place
  soldierY=floor(random(2,5))*80; //put soldier on random floor
  
  //light
  lightX=robotX+25; //start place
  lightY=robotY+37; //start place
  lightOverX=lightX-185; //how much can light go
}


void draw() {
  image(backGround,0,0); //set backGround
  image(soil,0,160); //set soil
  //life
  image(life,10,10); //left
  image(life,80,10); //middle
  image(life,150,10); //right
  //grass
  colorMode(RGB);
  fill(124,204,25);
  noStroke();
  rect(0,145,640,15);
  //groundHog
  image(groundHog,275,80); //set groundHog
  //sun
  colorMode(RGB); //big yellow one
  fill(255,255,0); //big yellow one
  ellipse(590,50,125,125); //big yellow one
  colorMode(RGB); //little orange one
  fill(253,184,19); //little orange one
  ellipse(590,50,120,120); //little orange one
  //robot
  image(robot,robotX,robotY); //set robot
  
  //soldier
  image(soldier,soldierX-80,soldierY); //set soldier
  soldierX+=5; //soldier's speed
  soldierX%=720; //how long soldier can walk
  
  //light
  colorMode(RGB); //color
  stroke(255,0,0); //color
  strokeWeight(10); //light's weight
  line(lightX,lightY,lightX+n,lightY); //light's width
  lightX-=2; //light's speed
  if(lightX<robotX+25-185){ //if lightX is smaller than robot+25-185
    lightX=robotX+25;  //then lightX will be robotX+25
  }
  n=floor(random(-41));
}
