#include <iostream>
using namespace std;

extern "C" int operation(int a, int b, int op);

int main() {
    int x;
    int y;
    cout << "Enter two intger between 1 - 100:";
    cin >> x >> y;
    
    cout << "Two integers entered: " << x << " and " << y << endl;
    cout << "Sum of the two integers: " << operation(x, y, 1) << endl;
    cout << "First integer minus the second integer: " << operation(x, y, 2) << endl;
    cout << "Product of the two integers: " << operation(x, y, 3) << endl;
    cout << "Average of the two integers: " << operation(x, y, 4) << endl;

    return 0;

}