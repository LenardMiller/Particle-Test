class Particle{
  PVector position;
  PVector velocity;
  float size;
  float speed;
  float angularSpeed;
  float angle;
  float angleTwo;
  int[] colors = {int(random(0,255)),int(random(0,255)),int(random(0,255))};
  int lifespan;
  boolean dead;
  Particle(float x, float y, float size){
    position = new PVector(x,y);
    angle = radians(random(0,360));
    angleTwo = angle;
    velocity = PVector.fromAngle(angle - HALF_PI);
    this.size = size;
    speed = random(.5,2.5);
    angularSpeed = (random(-5,5))*(random(0,1));
    lifespan = 1000;
    dead = false;
  }  
  void ptMain(ArrayList<Particle> particles, int i){
    if (position.y - size > height || position.x - size > width || position.y + 2*size < 0 || position.x + 2*size < 0){
      dead = true;
    }  
    if (dead){
      particles.remove(i);
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
}  
