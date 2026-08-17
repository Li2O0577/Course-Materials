#include <iostream>
using namespace std;
#define SIZE 1000

int main()
{
	int ary[SIZE];
	int i,j,n,tmp;
	cin >> n;

	for(i = 0; i < n; i ++)			//input
		cin >> ary[i];
 
	// sorting
	for(i = 0; i < n ; i ++){
		for (j = 0; j < n - i; j ++){
			if (ary[j] > ary[j+1]){
				tmp = ary[j];
				ary[j] = ary[j+1];
				ary[j+1] = tmp;
			}
		}			
	}
	// output
	for (i = 0; i < n; i ++)
		cout << ary[i] << " ";
	cout << endl;	
	
	return 0;	
} 
