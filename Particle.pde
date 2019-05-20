class Particle{
  PVector position;
  PVector velocity;
  float size;
  float speed;
  float angularSpeed;
  float angle;
  float angleTwo;
  int[] colors = {int(random(0,255)),int(random(0,255)),int(random(0,255))};
  int deathDate;
  boolean dead;
  Particle(float x, float y, float size){
    position = new PVector(x,y);
    angle = radians(random(0,360));
    angleTwo = angle;
    velocity = PVector.fromAngle(angle - HALF_PI);
    this.size = size;
    speed = random(.5,2.5);
    angularSpeed = (random(-5,5))*(random(0,1));
    deathDate = millis() + int(random(500,10000));;
    dead = false;
  }  
  void ptMain(ArrayList<Particle> particles, int i){
    if (position.y + size > height){
      velocity = new PVector(velocity.x,-velocity.y);
    }  
    if (position.x + size > width){
      velocity = new PVector(-velocity.x,velocity.y);
    }  
    if (position.y - size < 0){
      velocity = new PVector(velocity.x,-velocity.y);
    }  
    if (position.x - size < 0){
      velocity = new PVector(-velocity.x,velocity.y);
    }  
    if (millis() > deathDate){
      dead = true;  
    } 
    if (dead){
      die(i);
    }  
    display();
    move();
  }  
  void display(){
    angleTwo += radians(angularSpeed);
    fill(colors[0],colors[1],colors[2]);
    noStroke();
    pushMatrix();
    translate(position.x,position.y);
    rotate(angleTwo);
    rect(size/2,size/2,-size/2,-size/2);
    popMatrix();
  }  
  void move(){
    velocity.setMag(speed);
    position.add(velocity);
  }  
  void die(int i){
    int numChildren = 0;
    if (size > 3){
      numChildren = 3;
    }  
    float childSize = size/numChildren;
    for (int j = numChildren; j > 0; j--){
      particles.add(new Particle(position.x,position.y,childSize));  
    }  
    particles.remove(i);
  }  
}  
