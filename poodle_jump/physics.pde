void updatePlayerVelocity() {
  // Update Player Velocities according to keys pressed
  // Apply Gravity and Air Drag
  playerVy+=gravity;
   if(left)
  playerX-=10;
  
  if(right)
  playerX+=10;
 
}

void updatePlayerPosition() {
  playerX += playerVx;
  playerY += playerVy;
 
  // If Player falls out of side of screen, enter from opposite side
  if(playerX<playerRadius)
  playerX=displayWidth-(playerRadius-playerX);
  if(playerX>displayWidth-playerRadius)
  playerX=playerRadius-(displayWidth-playerX);
}

void updatePositions() {
  // If the player goes into the top half of screen
  // Move the view upwards
  // This is also when you should generate new platforms
}

void resolveCollisions() {
  // Collisionsonly happen when the player is falling
  if(playerVy>=0)
  {
    for(i=0;i<lenPlatforms;i++)
    {
    if(playerY-platforms[i][1]<playerRadius){
      print("A");
      playerVy=-PLAYER_VERT_VELOCITY;
      playerY=platforms[i][1]+playerRadius;}
    }
  }
  // If Player lands on a platform, bounce off with PLAYER_VERT_VELOCITY
}