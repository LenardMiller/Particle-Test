Particle particle;
ArrayList<Particle> particles;
PFont f;

void settings(){
  size(800,800);  
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
    particles.add(new Particle(mouseX,mouseY,random(1,90)));   
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
      particles.add(new Particle(mouseX,mouseY,random(1,90)));  
    }  
  }  
  if (key == '2'){
    for (int i = 100; i >= 0; i--){
      particles.add(new Particle(mouseX,mouseY,random(1,90)));   
    }  
  }  
  if (key == '3'){
    for (int i = 1000; i >= 0; i--){
      particles.add(new Particle(mouseX,mouseY,random(1,90)));   
    }  
  }  
  if (key == '4'){
    for (int i = 10000; i >= 0; i--){
      particles.add(new Particle(mouseX,mouseY,random(1,90)));  
    }  
  }  
  if (key == 'q'){
    particles.add(new Particle(mouseX,mouseY,1));  
  }  
  if (key == 'w'){
    particles.add(new Particle(mouseX,mouseY,10));  
  }  
  if (key == 'e'){
    particles.add(new Particle(mouseX,mouseY,20));  
  }  
  if (key == 'r'){
    particles.add(new Particle(mouseX,mouseY,30));  
  }  
  if (key == 't'){
    particles.add(new Particle(mouseX,mouseY,40));  
  }  
  if (key == 'y'){
    particles.add(new Particle(mouseX,mouseY,50));  
  }  
  if (key == 'u'){
    particles.add(new Particle(mouseX,mouseY,60));  
  }  
  if (key == 'i'){
    particles.add(new Particle(mouseX,mouseY,70));  
  }  
  if (key == 'o'){
    particles.add(new Particle(mouseX,mouseY,80));  
  }  
  if (key == 'p'){
    particles.add(new Particle(mouseX,mouseY,90));  
  }  
  if (key == 'a'){
    particles.add(new Particle(mouseX,mouseY,250));  
  } 
  if (key == 's'){
    particles.add(new Particle(mouseX,mouseY,500));  
  } 
  if (key == 'd'){
    particles.add(new Particle(mouseX,mouseY,750));  
  } 
  if (key == 'f'){
    particles.add(new Particle(mouseX,mouseY,1000));  
  } 
}  
