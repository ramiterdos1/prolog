#include<list>
#include<utility>
using namespace std;

class maxPriorityQueue
{
	private:
	list<pair<int,int> > elements;
	public:
	pair<int,int> pop()
	{
		list<pair<int,int> >::iterator lit,mlit;
		int max = -1;
		
		for(lit=elements.begin();lit!=elements.end();lit++)
		{
			if(lit->second > max)
			{
				mlit = lit;
				max = lit->second;
			}
		}
		pair<int,int> val(mlit->first, mlit->second);
		elements.erase(mlit);
		return val;
	}
	
	void push(pair<int,int> val)
	{
		elements.push_back(val);
	}
	
	int size()
	{
		return elements.size();
	}
};
