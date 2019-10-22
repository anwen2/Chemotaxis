 //declare bacteria variables here   
 Walker [] a = new Walker [50];
 void setup()   
 {     
 	//initialize bacteria variables here  
 	noStroke();
 	background(0); 
 	size(600,600);
 	frameRate(1000);
 	for(int i = 0; i < a.length; i++)
 	{
 		a[i] = new Walker();
 		a[i].x = (int)(Math.random()*256);
 		a[i].y = 255;
 		a[i].z = 255;
 	}
 }   
 void draw()   
 {    
 	//move and show the bacteria   
 	//background(255);
 	for(int i = 0; i < a.length; i++)
 	{
 		a[i].show();
 		a[i].walk();
 	}
 }  
 class Walker    
 {     
 	//lots of java!
 	int myX = 300;
 	int myY = 300;
 	int x;
 	int y;
 	int z;
 	void show()
 	{
 		fill(x,y,z);
 		ellipse(myX,myY,1,1);
 	}
 	void walk()
 	{
 		myX = myX + (int)(Math.random()*5-2.5);
 		myY = myY + (int)(Math.random()*5-2.5);

 	}

 }    