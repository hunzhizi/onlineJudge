#include<stdio.h>
int main(void)
{
        int i,j,k=0;
        printf("");
        scanf("%d",&i);
        j=i;
        while(j)
        {
                k=k*10+j%10;
                j/=10;
        }
        if(k==i)
        printf("1\n");
        else
        printf("0\n");
        return 0;
}

