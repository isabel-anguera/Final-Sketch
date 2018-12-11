class Player {
  PVector pos;
  int size;
  color p1Color;
  color p2Color;
  int score;

  Player( int whichPlayer) {
    size = 50;

    if (whichPlayer == 1) {
      pos = new PVector(50, height/2);
    } else if (whichPlayer == 2) {
      pos = new PVector(650, height/2);
    }
  }

  void checkCollision(Player p) {
    if (p.pos.x < (food.pos.x + p.size/2) &&
      p.pos.x > (food.pos.x) &&
      p.pos.y > (food.pos.y) &&
      p.pos.y < (food.pos.y + p.size/2)) {
      food.generate();
      p.size += 10;
      p.score ++;
      
    }
  }

  //void ifEaten(Player p) {
  //  if (p == food.posX && p == food.posY) {
  //    p1.size += 10;
  //    score1 += 1;
  //  }
  //}

  void update(boolean up, boolean down, boolean right, boolean left) {
    if (up) {
      pos.y -= 5;
    }

    if (down) {
      pos.y+=5;
    }

    if (right) {
      pos.x+=5;
    }

    if (left) {
      pos.x-=5;
    }

    if (pos.x < 0) {
      pos.x = width;
    }

    if (pos.x > width) {
      pos.x = 0;
    }

    if (pos.y < 0) {
      pos.y = height;
    }

    if (pos.y > height) {
      pos.y = 0;
    }
  }



  void display(int whichPlayer) {
    noStroke();

    p1Color = color(173, 48, 75);
    p2Color = color(11, 74, 119);

    if (whichPlayer == 1) {
      fill(p1Color);
    } else if (whichPlayer == 2) {
      fill(p2Color);
    }

    ellipse(pos.x, pos.y, size, size);

    fill(255);
    textSize(24);
    textAlign(CENTER, CENTER);
    text(p1.score, p1.pos.x, p1.pos.y-2);
    text(p2.score, p2.pos.x, p2.pos.y-2);
  }
 
}
