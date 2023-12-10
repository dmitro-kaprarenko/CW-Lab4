#include "calculator.h"
#include <iostream>

int main() {
    Calculator calculator;

    double a = 5.0;
    double b = 3.0;

    int result_add = calculator.Add(a, b);
    int result_subtract = calculator.Sub(a, b);

    std::cout << "Addition result: " << result_add << std::endl;
    std::cout << "Subtraction result: " << result_subtract << std::endl;

    return 0;
}
