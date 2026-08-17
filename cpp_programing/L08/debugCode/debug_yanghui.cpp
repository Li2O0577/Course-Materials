//输出杨辉三角前N行 
#include <stdio.h>
#define N 10

int main()
{
	int i , j ;
	int a[N][N];

	a[0][0] = 1;
	for(i = 1; i < N; i++)
	{
		for(j = 1; j < i; j++)
		{
			a[i][j] = a[i-1][j-1] + a[i-1][j];
		}
		a[i][i] = 1;
		
	}

	for(i = 0; i < N; i++)
	{
		for(j = 0; j <= i; j++)
		{
			printf("%-10d" , a[i][j]);
		}
		printf("\n");
	}
	return 0;
	
}
