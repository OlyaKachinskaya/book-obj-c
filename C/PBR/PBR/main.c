//
//  main.c
//  PBR
//
//  Created by Оля Качинская on 04.02.2021.
//In polar coordinates, the notation (theta, radius) denotes
// a left rotation theta radians,
// offset by radius from the origin.
// В полярных координатах запись (theta, radius) обозначает
// поворот влево на theta радиан
// со смещением на расстояние radius от начала координат.

#include <stdio.h>
#include <math.h>

void cartesianToPolar(float x, float y, double *rPtr, double *thetaPtr)
{
  
    //Указатель rPtr отличен от NULL?
    if (rPtr != NULL) *rPtr = sqrt(x * x + y * y);
    
    //указатель thetaPtr равен NULL?
    if(thetaPtr == NULL)
    {
      //some code
        return;
    }
    // calculation theta;
    float theta;
    
    if (x == 0.0)
    {
        if (y == 0.0) theta = 0.0;
        else theta = y > 0 ? M_PI_2 : -M_PI_2;
    }
    else theta = atan(y / x);
    
    // value theta is stored at the passed value
    //значение theta сохраняется по переданному значению
    *thetaPtr = theta;
}

int main(int argc, const char * argv[]) {
    double pi = 3.14;
    double integerPart;
    double fractionPart;

    //the address integerPart is passed to the argument (адресс передается в аргумент)
    fractionPart = modf(pi, &integerPart);

    //determining the value stored in integerPart ( определение значения, хранящегося в )
    printf("integerPart = %.0f, fractionPart = %.2f\n", integerPart, fractionPart);

    double x = 3.0;
    double y = 4.0;
    double radius;
    double angle;

    cartesianToPolar(x, y, &radius, &angle);
    printf("(%.2f, %.2f) becomes (%.2f radians. %.2f)\n", x, y, radius, angle);

    return 0;
}
