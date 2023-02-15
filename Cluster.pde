class Cluster
{
    public final static int NUM_STEMS = 7; //number of tendrils per cluster
    public Cluster(int len, int x, int y)
    {
       double angle = Math.random()*6.38;
       for(int i = 0; i < NUM_STEMS; i ++){
         Tendril t = new Tendril(len,angle,x,y);
         t.show();
         angle += angle*(6.38/7);
       }
    }
      
}
