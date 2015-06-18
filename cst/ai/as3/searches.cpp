#include<stdio.h>
#include<vector>
#include<list>
using namespace std;

//the parameters and the position of the empty tile
//the first index in the 2D array is the row and the second is the column
void moveEmptyTileLeft(int board[][3],int row, int col)
{
 if(col!=0)
  {
    int temp;
    temp = board[row][col-1];	
    board[row][col-1] = -1;
    board[row][col] = temp;	
  }
}

void moveEmptyTileRight(int board[][3], int row, int col)
{
 if(col != 2)
 {
	int temp;
	temp = board[row][col+1];
	board[row][col+1] = -1;
	board[row][col] = temp;  	
 } 	
}

void moveEmptyTileTop(int board[][3], int row, int col)
{
	if(row !=0)
	{
		int temp;
		temp = board[row-1][col];
		board[row-1][col] = -1;
		board[row][col] = temp;
	}			
}

void moveEmptyTileDown(int board[][3], int row, int col)
{
	 if(row != 2)
	 {
		 int temp;
		 temp = board[row+1][col];
		 board[row+1][col] = -1;
		 board[row][col] = temp;
	 }
}


