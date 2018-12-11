Player p1;
Player p2;
Food food;

boolean p1up, p1down, p1right, p1left, p2up, p2down, p2right, p2left;

void keyPressed() {
  if (key != CODED) {
    if (key == 'w') {
      p1up = true;
    } else if (key == 's') {
      p1down = true;
    } else if (key == 'a') {
      p1left = true;
    } else if (key == 'd') {
      p1right = true;
    }
  } else {
    if (keyCode == UP) {
      p2up = true;
    } else if (keyCode == DOWN) {
      p2down = true;
    } else if (keyCode == LEFT) {
      p2left = true;
    } else if (keyCode == RIGHT) {
      p2right = true;
    }
  }
}


void keyReleased() {
  if (key != CODED) {
    if (key == 'w') {
      p1up = false;
    } else if (key == 's') {
      p1down = false;
    } else if (key == 'a') {
      p1left = false;
    } else if (key == 'd') {
      p1right = false;
    }
  } else {
    if (keyCode == UP) {
      p2up = false;
    } else if (keyCode == DOWN) {
      p2down = false;
    } else if (keyCode == LEFT) {
      p2left = false;
    } else if (keyCode == RIGHT) {
      p2right = false;
    }
  }
}


void setup() {
  size(700, 500);
  p1 = new Player(1);
  p2 = new Player(2);
  food = new Food();
}

void draw() {
  background(149, 156, 173);
  stroke(255);
  strokeWeight(9);
  line(0,0,width-1,0);
  line(0,0,0,height);
  line(width-1,0, width-1,height);
  line(0,height,width, height);
  
  
  food.update();
  food.display();

  p1.update(p1up, p1down, p1right, p1left);
  p1.display(1);

  p2.update(p2up, p2down, p2right, p2left);
  p2.display(2);
  
  p2.checkCollision(p1);
  p1.checkCollision(p2);
  
  food.ifEaten(p1);
  food.ifEaten(p2);
  
}


  
