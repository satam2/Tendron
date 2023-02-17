class Tendril
{
  public final static int SEG_LENGTH = 4; //length of each segment in the tendril
  private int myNumSegments, myX, myY;
  private double myAngle;
  
  /**
   Class constructor
   len is how many segments in this tendril (each a fixed length, 4 is a good start)
   theta is tendril starting angle in radians 
   x, y  is the starting (x,y) coordinate
   */
  public Tendril(int len, double theta, int x, int y)
  {
    myAngle = theta;
    myX = x;
    myY = y;
    myNumSegments = len;
  }
  public void show()
  {
    int startX = myX;
    int startY = myY;
    stroke( #228B22);
    strokeWeight(1.5);
    if(myNumSegments<16&&myNumSegments>4){
      stroke(200);
      strokeWeight(2);
    }
    if(myNumSegments<5)
      stroke(230);
      
    for(int i = 0; i < myNumSegments; i ++){
      myAngle += (Math.random()*0.4)-0.2;
      float endX = startX + cos((float)myAngle)*SEG_LENGTH;
      float endY = startY + sin((float)myAngle)*SEG_LENGTH;
      line(startX, startY, endX, endY);
      startX = (int)endX;
      startY = (int)endY;
    }
    if(myNumSegments >= 3)
      new Cluster(myNumSegments/3, startX, startY);
    
  }
}
