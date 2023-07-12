#include <iostream>
using namespace std;

int main()
{
    int n, total =1, a;
    cout << "Enter number of factorials: ";
    cin>> n;

    a=n;

    while(a!=0)
    {
        total*=a;
        a-=1;
    }

    cout<< "Factorial of " <<n <<" = " << total;

    return 0;
}
