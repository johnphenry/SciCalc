//
//  expression.cpp
//  SciCalc
//
//  Created by John Henry on 8/7/17.
//  Copyright © 2017 John Henry. All rights reserved.
//
#include <string>
#include "exprtk.hpp"
using namespace std;
using namespace exprtk;
extern "C" {
    
float EvaluateExpression(const char*cstring){
    string str(cstring);
    expression<float> exp;
    parser<float> p;
    p.compile(str,exp);
    return exp.value();
}
    
}
