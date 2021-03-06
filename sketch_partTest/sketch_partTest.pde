Particle particle;
ArrayList<Particle> particles;
PFont f;

void settings(){
  size(400,400);  
}  

void setup(){
  rectMode(CORNERS);
  particles = new ArrayList<Particle>();
  f = createFont("STHeitiSC-Light", 18);
}  

void draw(){
 noStroke();
 fill(25);
 rect(0,0,width,height);
 keyInputs();
 drawParts();
 drawText();
}  

void keyInputs(){
  if (mousePressed == true){
    particles.add(new Particle(mouseX,mouseY,random(1,15)));   
  }  
}  

void drawParts(){
  for (int i = particles.size()-1; i >= 0; i--){
    Particle particle = particles.get(i);
    particle.ptMain(particles, i);
  }  
}  

void drawText(){
  fill(255);
  textFont(f);
  textAlign(RIGHT);
  text(round(frameRate), width - 10, 30);
  textAlign(LEFT);
  text(particles.size(),10,30);
}  

void keyReleased(){
  if (key == '1'){
    for (int i = 10; i >= 0; i--){
      particles.add(new Particle(mouseX,mouseY,random(1,15)));  
    }  
  }  
  if (key == '2'){
    for (int i = 100; i >= 0; i--){
      particles.add(new Particle(mouseX,mouseY,random(1,15)));   
    }  
  }  
  if (key == '3'){
    for (int i = 1000; i >= 0; i--){
      particles.add(new Particle(mouseX,mouseY,random(1,15)));   
    }  
  }  
  if (key == '4'){
    for (int i = 10000; i >= 0; i--){
      particles.add(new Particle(mouseX,mouseY,random(1,15)));  
    }  
  }  
}  
