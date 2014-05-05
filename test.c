#include "student_info.h"
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
void suiji(int a[]);
void disp (int a[]);
int main()
{

	
	int a[40];
        srand(time(NULL));
        suiji(a);
        disp(a); 		
	return 0;
}
void suiji(int a[]){
     int i,w,t;
	int j=0;	
	for(i=0;i<40;i++)
         a[i]=i;
 	for(i=39;i>=0;i--)
	{
	w=rand()%40;
	t=a[i];
	a[i]=a[w];
	a[w]=t;
	}
}
void disp(int a[]){
		int i,j=0,b;
                for(i =0;i<40;i++)
        	{
	          b=i;
		  if(j%4==0)
		  printf("\n");
		  j++;
		  i=a[i];
		  printf("%d - %s\n", info[i].id, info[i].name);
		  i=b;
	    }

}


























