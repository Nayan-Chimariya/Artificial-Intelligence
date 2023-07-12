#include <iostream>

using namespace std;

class Animal
{
public:
    string name;
    int age;
    string species;

    Animal(string n, int a, string s)
    {
        name=n;
        age=a;
        species=s;
    }

    void print()
    {
        cout <<"Name = " << name <<endl;
        cout <<"age = " << age<<endl;
        cout <<"species = " << species <<endl;
    }
};

int main()
{
    Animal dog("bultu",3,"dog");
    Animal cat("pussy",2,"cat");

    dog.print();
    cout<<endl;
    cat.print();

    return 0;
}
