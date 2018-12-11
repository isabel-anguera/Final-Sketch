class Food {
  PVector pos;
  boolean eaten = false;
  int size = 10;
  
  Food() {
    generate();
  }
  
  void generate() {
    pos = new PVector(int(random(0,width)), int(random(0,height)));

  }
  
  void update() {
    if (eaten == true) {
      generate();
    }
  }
  
  void display() {
    noStroke();
    fill(255);
    ellipse(pos.x, pos.y, size,size);
  }
  
  void ifEaten(Player p) {
    if (p.pos.x + p.size == food.pos.x && p.pos.y + p.size == food.pos.y) {
      
    }
  }
}
      
      
