void setup() {
  size(displayWidth, displayHeight);
  resetGame();

  textFont(createFont("Arial Bold", 50));
}

void draw() {
  background(bgColor);
  drawPlatforms(); 
  drawPlayer();
  updatePlayerPosition();
  updatePlayerVelocity();
resolveCollisions();
}

void drawStartScreen() {
}

void drawLoseScreen() {
}

void drawGameScreen() {
}

void drawPlayer() {
  fill(playerColor);
  ellipse(playerX,playerY,2*playerRadius,2*playerRadius);
 //playerX+=playerVx;
  //playerY+=playerVy;
}

void drawPlatforms() {
  for(i=0;i<lenPlatforms;i++){
    rect(platforms[i][0],platforms[i][1],platformLength,platformHeight);
}
}

void resetGame(){
  // Initialize Player Position and Velocity
  initializePlatforms();
}

void initializePlatforms() {
  // Create Initial Set of Platforms
  fill(platformColor);
  for(i=0;i<random(numPlatforms,lenPlatforms);i++){
  platforms[i][0]=random(0,displayWidth-platformLength);
  platforms[i][1]=random(0,displayHeight-platformHeight);}
}

void displayScore() {
  // Show Player Score in a corner
}