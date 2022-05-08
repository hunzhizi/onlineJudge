#include<stdio.h>
int main()
{
	int x, b = 0, c = 0,d=0, n = 0;
	scanf("%d", &x);
	do
	{
		b = x % 10;
		n++;
		c = c * 10 + b;
		x = x / 10;
	} while (x > 0);
	printf("%d\n", c);
	return 0;
}
