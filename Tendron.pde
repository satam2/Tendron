public void setup()
{
  size(500, 500);  
  background(255);
  stroke(0);
  frameRate(2);
}

public void draw()
{
  background(#A4BE5C);
  Cluster t = new Cluster(35, 250, 250);
  Cluster y = new Cluster(25, 500, 350);
  Cluster u = new Cluster(25, -10, 500);
}

