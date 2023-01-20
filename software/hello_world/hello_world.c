#include<stdlib.h>
#include<sys/alt_stdio.h>
#include<sys/alt_alarm.h>
#include<sys/times.h>
#include<alt_types.h>
#include<system.h>
#include<stdio.h>
#include<unistd.h>

// Test case 1
//#define step 5
//#define N 52

// Test case 2
#define step 1/8.0
#define N 2041

// Test case 3
//#define step 1/1024.0
//#define N 261121

void generateVector(float x[N]){
	int i;
	x[0] = 0;
	for (i=1; i<N; i++){
		x[i] = x[i-1] + step;
	}
}

float sumVector(float x[], int M){
	float t_y = 0;
	float c_y;
	for(int i = 1; i < M; i++ ){
		c_y = x[i] + (x[i] * x[i]);
		t_y = t_y + c_y;


	}
	return t_y;
}

int main(){
	printf("Task 2!\n");

	float x[N];

	float y;

	generateVector(x);

	printf("generate complete \n");

	char buf[50];
	clock_t exec_t1, exec_t2;

	exec_t1 = times(NULL);

	y = sumVector(x,N);

	exec_t2 = times(NULL);

	printf("%f \n", y);

	for (int i = 0; i<10; i++){
		y = y/2.0;
		printf("Result: %d \n",(int) y);
	}
	printf("%d \n", exec_t2 - exec_t1);
	printf("complete");
	return 0;
}
