int len = 700;
int redColor;
public void setup()
{
  size(700,700); //size of canvas 
  background(0); //white background 
}
public void draw()
{
 ; 
 /*
 Calls sierpinski function with the x as 0, 
 the y as height which is a system variable that stores the second parameter in the 
 size() function so in this case 500,
 len is established also as 500 which is initalized as a global variable at the start
 of the program
 */
 sierpinski(0, height, len); 

}
public void mousePressed()//optional
{
 
  redColor = (int)(Math.random() * 255); //everytime mouse is pressed it generates a new value for redColor
}
public void sierpinski(int x, int y, int len) 
{
  fill(redColor, 104, 227); //fills the triangles with the random shade blue, purple, pink
  if(len <= 20) //base case //if len is less than or equal to 20 
  {
    triangle(x, y, x+len/2, y-len, x+len, y);
  }
  else
  {
    sierpinski(x,y,len/2);
    sierpinski(x +len/2, y, len/2);
    sierpinski(x+len/4, y - len/2, len/2);
  }
}
