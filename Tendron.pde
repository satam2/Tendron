public void setup()
{
  size(500, 500);  
  background(255);
  stroke(0);
  frameRate(3);
  //noLoop();
}

public void draw()
{
  background(255);
  Cluster t = new Cluster(35, 250, 250);
}
public void mousePressed()
{
  redraw();
}
