int j = 20;
public void setup()
{
	size (650, 650);
	background(255);
}
public void draw()
{
	sierpinski(15,620, 600);
	sierpinski(300+ j, 400, j/2);
	sierpinski(300- j, 400, j/2);
}
public void mouseClicked()//optional
{
	fill((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
	j += 10;
} 
public void sierpinski(int x, int y, int len) 
{


	if (len > 2)
	{
		sierpinski(x,y,len/2);
		sierpinski(x+len/2, y, len/2);
		sierpinski(x + len/4, y - len/2, len/2);
	}
	else
	{
		noStroke();
		triangle(x,y,x+len/2, y+len, x-len/2, y+len);
	}

}
