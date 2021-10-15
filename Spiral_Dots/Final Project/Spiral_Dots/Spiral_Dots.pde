import processing.sound.*;
SoundFile sound;

int radius, radius2, radius3, radius4, radius5;
int numDots;
float i ;

void setup()
{
  size(500, 500);
  
 sound = new SoundFile(this, "meditation.mp3");
 sound.play();
 
  radius  = 240;
  radius2 = 180;
  radius3 = 120;
  radius4 = 60;
  radius5 = 10;
  numDots = 1000;
  frameRate(40);
}

void draw()
{
  background(0);
  fill(255);
  stroke(255);

  fill(200);

  float time = frameCount/40.0;

  strokeWeight(15);
  
  for (int i = 0; i < width; i=i+1) {
    float colour = random(99);
    stroke(colour);
   ellipse(i, 250, 10, 500);
  }

  for (int i=0; i<numDots; i=i+1)
  {
    stroke(#4E7A9D);
    point(width/2  + radius*cos(1.65*time*i/numDots + time),
      height/2  + radius*sin(1.65*time*i/numDots + time));
  }
  for (int i=0; i<numDots; i=i+1)
  {
    stroke(#598CB4);
    point(width/2  + radius2*cos(1.8*time*i/numDots + time),
      height/2  + radius2*sin(1.8*time*i/numDots + time));
  }
  for (int i=0; i<numDots; i=i+1)
  {
    stroke(#659ECB);
    point(width/2  + radius3*cos(1.85*time*i/numDots + time),
      height/2  + radius3*sin(1.85*time*i/numDots + time));
  }
  for (int i=0; i<numDots; i=i+1)
  {
    stroke(#76B7EA);
    point(width/2  + radius4*cos(1.9*time*i/numDots + time),
      height/2  + radius4*sin(1.9*time*i/numDots + time));
  }
  for (int i=0; i<numDots; i=i+1)
  {
    stroke(#86C9FF);
    point(width/2  + radius5*cos(1.95*time*i/numDots + time),
      height/2  + radius5*sin(1.95*time*i/numDots + time));
  }
}
