#include<stdio.h>
#include<list>
#include<map>
#include<queue>
#include<utility>
#include<stack>
#include<algorithm>
#include "maxPriorityQueue.cpp"
using namespace std;

int getDigitAtPos(int num ,int pos)
{
	int dig;
	int ctr=-1;
	do
	{
		dig = num %10;
		num /= 10;
		ctr++;
	}while(ctr < pos);
	
	return dig;
}

int swapDigitsAtPosition(int num, int pos1, int pos2)
{
	int dig1,dig2,dig;
	
	dig1 = getDigitAtPos(num,pos1);
	dig2 = getDigitAtPos(num,pos2);
	
	int newNum = 0;
	int multiplier = 1;
	int pos=0;
	
	while(num != 0)
	{
		dig = num%10;
		if(pos == pos1)
		{
			dig = dig2;
		}
		if(pos == pos2)
		{
			dig = dig1;
		}
		newNum = dig*multiplier + newNum;
		multiplier *=10;
		num/=10;
		pos++;
	}
	return newNum;
}

//config is the present configuration 
int moveLeft(int config)
{
	int pos = 0, dig;
	int tconfig = config;
	while(tconfig != 0)
	{
		
		dig = tconfig%10;
		
		if(dig == 9)
		{
			//no change at the left most column
			if((pos == 2 ) || (pos == 5) || (pos == 8))
			{
				return config;
			}
			return swapDigitsAtPosition(config,pos,pos+1);
				
		}
		pos++;
		tconfig/=10;
	}
	return -1;
}

//config is the present configuration 
int moveRight(int config)
{
	int pos = 0, dig;
	int tconfig = config;
	while(tconfig != 0)
	{
		dig = tconfig%10;
		
		if(dig == 9)
		{
			//no change at the right most column
			if((pos == 0 ) || (pos == 3) || (pos == 6))
			{
				return config;
			}
			return swapDigitsAtPosition(config,pos,pos-1);
				
		}
		pos++;
		tconfig/=10;
	}
	return -1;
}

//config is the present configuration 
int moveTop(int config)
{
	int pos = 0, dig;
	int tconfig = config;
	while(tconfig != 0)
	{
		dig = tconfig%10;
		
		if(dig == 9)
		{
			//no change at the top most row
			if((pos == 6 ) || (pos == 7) || (pos == 8))
			{
				return config;
			}
			return swapDigitsAtPosition(config,pos,pos + 3);
		}
		pos++;
		tconfig/=10;
	}
	return -1;
}

//config is the present configuration 
int moveBottom(int config)
{
	int pos = 0, dig;
	int tconfig = config;
	while(tconfig != 0)
	{
		dig = tconfig%10;
		
		if(dig == 9)
		{
			//no change at the bottom most row
			if((pos == 0 ) || (pos == 1) || (pos == 2))
			{
				return config;
			}
			return swapDigitsAtPosition(config,pos,pos - 3);
		}
		pos++;
		tconfig/=10;
	}
	return -1;
}

void printBoard(int config)
{
	printf("Printing\n");
	int arr[3][3];
	int i,j,dig;
	for(i=2;i>=0;i--)
	{
		for(j=2;j>=0;j--)
		{
			dig = config%10;
			arr[i][j]=dig;
			config /=10;
		}
	}
	
	for(i=0;i<3;i++)
	{
		for(j=0;j<3;j++)
		{
			if(arr[i][j]==9)
			 printf("S ");
			else 
			printf("%d ",arr[i][j]);
		}
		printf("\n");
	}
}

bool compareFn(pair<int,int>A, pair<int,int> B)
{
	return A.second<B.second;
}

int getParentFromList(list<pair<int,int> >parents, int childNode)
{
	list<pair<int,int> >::iterator lit;
	for(lit=parents.begin();lit!=parents.end();lit++)
	{
		if(lit->first == childNode)
		{
			return lit->second;
		}
	}
	return -1;
}

void printBoardFromParents(list<pair<int, int> > parents, int initialConfig, int finalConfig)
{
	list<int>::iterator lit;
	list<int>path;
	path.push_front(finalConfig);
	int presNode = finalConfig;
	
	while(presNode != initialConfig)
	{
		int parentNode = getParentFromList(parents,presNode);
		path.push_front(parentNode);
		presNode = parentNode;
	}
  
    for(lit = path.begin();lit!=path.end();lit++)
    {
		printBoard(*lit);
	} 		
}

bool Contains(list<int> values, int config)
{
	list<int>::iterator lit;
	for(lit=values.begin();lit!=values.end();lit++)
	{
		if(*lit == config)
		{
			return true;
		}
	} 
	return false;
}

int breadthFirstSearch(int initialConfig, int finalConfig)
{
	list<int> openList;
	list<int> closedList;
	int config;
	int compCount=0;
	int c[4],i; //the 4 possible configurations
	openList.push_back(initialConfig);
	while(openList.size()>0)
	{
		config = openList.front();
		openList.pop_front();
		closedList.push_back(config);
		
		//printBoard(config);
		compCount++;
		
		if(config==finalConfig)
		{
			break;
		}
		
		
		c[0] = moveLeft(config);
		c[1] = moveRight(config);
		c[2] = moveTop(config);
		c[3] = moveBottom(config);
		
		for(i=0;i<4;i++)
		{
			//if the newly generated configuration is not the same as the original one
			if(c[i] != config)
			{
			  if(!Contains(closedList,c[i]))
			    {
				  if(!Contains(openList,c[i]))
				   {
					 openList.push_back(c[i]);
				   }
			    }
		    }
	    }
	}
	return compCount;
}

int depthFirstSearch(int initialConfig, int finalConfig)
{
	stack<int> elements;
	int c[4],i,config;
	elements.push(initialConfig);
	map<int,bool> encountered;
	int compCount = 0;
	while(true)
	{
		config = elements.top();
		elements.pop();
		encountered[config] = true;
		
		if(config == finalConfig)
		{
			break;
		}
		compCount++;
		
		c[0] = moveLeft(config);
		c[1] = moveRight(config);
		c[2] = moveTop(config);
		c[3] = moveBottom(config);
		for(i=0;i<4;i++)
		{
		  if(c[i] != config)
		  {
			if(!encountered[c[i]])
			{
				elements.push(c[i]);
			}
		  }
		}
	}
	return compCount;
}

//heuristic used is how many tiles of the present configuration match with the final configuration
int heuristicFunction(int config, int finalConfig)
{
	int count = 0;
	while(config!=0)
	{
		int dig1 = config%10;
		int dig2 = finalConfig%10;
		if(dig1==dig2)
		{
			count++;
		}
		
		config /= 10;
		finalConfig /=10;
	}
	return count;
}

int AStarHeuristicFunction(int config,int finalConfig, int distFromSource)
{
	int h1 = heuristicFunction(config,finalConfig);
	int h2 = distFromSource;
	return h1+h2;
}

int bestFirstSearch(int initialConfig, int finalConfig)	
{
	maxPriorityQueue allNodes;
	map<int,bool> encountered;
	
	list<pair<int, int> > parents; //the second element is the parent of the first element
	
	allNodes.push(make_pair(initialConfig,heuristicFunction(initialConfig, finalConfig)));
	parents.push_back(make_pair(initialConfig,-1)); //-1 denotes that the initial configuration has no parent
	
	int compCount = 0;
	int i;
	pair<int,int> c[4];
	for(i=0;i<4;i++)
	{
		c[i] = make_pair(-1,-1);
	}
	while(allNodes.size()>0)
	{
		pair<int,int> topElement = allNodes.pop();
		int config = topElement.first;
		
		//mark the configuration as visited
		encountered[config] = true;
		
		//printBoard(config);
		compCount++;
		if(config == finalConfig)
		{
			break;
		}
		c[0].first = moveLeft(config);
		c[1].first = moveRight(config);
		c[2].first = moveTop(config);
		c[3].first = moveBottom(config);
		for(i=0;i<4;i++)
		{
			if(c[i].first != config)
			{
			  if(!encountered[c[i].first])
			   {
				 c[i].second = heuristicFunction(c[i].first,finalConfig);
				 allNodes.push(c[i]);
				 parents.push_back(make_pair(c[i].first,config));
			   }
		    }
		}	
	}
	//printBoardFromParents(parents,initialConfig,finalConfig);
	return compCount;
}

int hillClimbingSearch(int initialConfig, int finalConfig)
{
	//sort the generated children and place them at the front of the list
	list<int>elements;
	map<int,bool>encountered;
	list<pair<int,int> > parents;
	
	pair<int,int> c[4];
	vector<pair<int,int> > toBeSorted; //temporary vector to sort the 4 neighbors by their heuristic value
	vector<pair<int,int> >::iterator vit;
	
	elements.push_back(initialConfig);
	int compCount = 0,i;
	
	for(i=0;i<4;i++)
	{
		c[i] = make_pair(-1,-1);
	}
	
	while(elements.size()>0)
	{
		int config = elements.front();
		elements.pop_front();
		encountered[config] = true;
		
		compCount++;
		if(config == finalConfig)
		{
			break;
		}
		c[0].first = moveLeft(config);
		c[1].first = moveRight(config);
		c[2].first = moveTop(config);
		c[3].first = moveBottom(config);
		
		for(i=0;i<4;i++)
		{
			if(c[i].first != config && !encountered[c[i].first])
			{
				toBeSorted.push_back(make_pair(c[i].first,heuristicFunction(c[i].first,finalConfig)));
				parents.push_back(make_pair(c[i].first,config));
			}
		}
		
		//sort the configs by increasing order of cost of heuristic function
		sort(toBeSorted.begin(),toBeSorted.end(),compareFn);
		
		for(vit=toBeSorted.begin();vit!=toBeSorted.end();vit++)
		{
			//the first element has the element with the highest value of the heuristic function
			elements.push_front(vit->first);
		}
		toBeSorted.clear();
	}
	//printBoardFromParents(parents,initialConfig,finalConfig);
	return compCount;
}

int AStarSearch(int initialConfig, int finalConfig)
{
	maxPriorityQueue allNodes;
	map<int,bool> encountered;
	
	list<pair<int, int> > parents; //the second element is the parent of the first element
	int distFromSource = 0;
	int compCount = 0;
	
	allNodes.push(make_pair(initialConfig,AStarHeuristicFunction(initialConfig,finalConfig,distFromSource)));
	
	parents.push_back(make_pair(initialConfig,-1)); //-1 denotes that the initial configuration has no parent
	int i;
	pair<int,int> c[4];
	for(i=0;i<4;i++)
	{
		c[i] = make_pair(-1,-1);
	}
		
	while(allNodes.size()>0)
	{
		pair<int,int> topElement = allNodes.pop();
		int config = topElement.first;
		
		//mark the configuration as visited
		encountered[config] = true;
		
		//printBoard(config);
		compCount++;
		distFromSource++;
		
		if(config == finalConfig)
		{
			break;
		}
		c[0].first = moveLeft(config);
		c[1].first = moveRight(config);
		c[2].first = moveTop(config);
		c[3].first = moveBottom(config);
		for(i=0;i<4;i++)
		{
			if(c[i].first != config)
			{
			  if(!encountered[c[i].first])
			   {
				 c[i].second = AStarHeuristicFunction(c[i].first,finalConfig,distFromSource);
				 allNodes.push(c[i]);
				 parents.push_back(make_pair(c[i].first,config));
			   }
		    }
		}	
	}
	//printBoardFromParents(parents,initialConfig,finalConfig);
	return compCount;	
}

int main()
{
	int presConfig  =  283164795;
	int finalConfig =  123894765;
		
	int moves;
	
	moves = breadthFirstSearch(presConfig,finalConfig);
	printf("\nBreadth First Search moves = %d", moves);
	
	moves = depthFirstSearch(presConfig,finalConfig);
	printf ("\nDepth first search moves = %d", moves);
	
	moves = hillClimbingSearch(presConfig, finalConfig);
	printf ("\nHill climbing search moves = %d", moves); 
	
	moves = bestFirstSearch(presConfig,finalConfig);
	printf ("\nBest first search moves = %d", moves); 
	
	moves = AStarSearch(presConfig, finalConfig);
	printf ("\nA star search moves = %d", moves); 

	return 0;
}
