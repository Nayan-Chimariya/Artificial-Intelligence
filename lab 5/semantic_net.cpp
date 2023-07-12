#include <iostream>
#include <vector>

using namespace std;

class Node
{
public:
    string name;
    vector<Node*>children;

    Node(string n)
    {
        name =n;
    }

    void addchildren(Node* child)
    {
        children.push_back(child);
    }
};

int main()
{
    Node* animal = new Node("animal");
    Node *dog = new Node ("dog");
    Node *cat = new Node ("cat");

    animal->addchildren(dog);
    animal->addchildren(cat);

    cout<< animal->name <<endl;
    cout<< " " << animal->children[0]->name <<endl;
    cout<< " " << animal->children[1]->name <<endl;

    return 0;
}
