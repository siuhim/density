class Ball {
  float x = 0;
  float y = 0;
  float speedX = random(-1, 1);
  float speedY = random(-1, 1);
  
  Ball(float _x, float _y) {
    
    x = _x;
    y = _y;
    
  }

  void run() {
    display();
    move();
    bounce();
  }
    
  void bounce () {
    if( x > width) {
      speedX = speedX * -1;
    }
    if( x < 0) {
      speedX = speedX * -1;
    }
    if( y > height) {
      speedY = speedY * -1;
    }
    if( y < 0) {
      speedY = speedY * -1;
    }
  }
  
  void move() {
   x += speedX; 
   y += speedY;
  }
  
  void display()  {
    noStroke();
    ellipse (x, y, 5, 5);
  }
  
}
