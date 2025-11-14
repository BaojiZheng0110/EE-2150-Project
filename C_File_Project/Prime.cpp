#include <iostream>
using namespace std;

extern "C" int findPrime(int a);

int main() {
    int x;
    cout << "Enter a integer:";
    cin >> x;
    int result = findPrime(x);
    if (result == 1)
        cout << "The integer " << x << " is prime" << endl;
    else if (result == -1)
        cout << "The integer is outside of the range" << endl;
    else if (result == 0)
        cout << "This integer is not prime" << endl;
    return 0;
}