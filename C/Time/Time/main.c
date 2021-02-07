//
//  main.c
//  Time
//
//  Created by Оля Качинская on 05.02.2021.
//

#include <stdio.h>
#include <time.h>

int main (int argc, const char * argv[]) {
        long secondsSince1970 = time(NULL);
        printf("It has been %ld seconds since 1970\n", secondsSince1970);
        struct tm now;
        localtime_r(&secondsSince1970, &now);
        printf("The time is %d:%d:%d\n", now.tm_hour, now.tm_min, now.tm_sec);
        printf("%d - %d - %d\n", now.tm_mon + 1, now.tm_mday, now.tm_year + 1900);
    
//    struct tm date;
//    long seconds = 4000000;
//
//    localtime_r(&seconds,&date);
//
//    printf("%d - %d - %d\n",date.tm_mon + 1, date.tm_mday, date.tm_year - 70);
    
    return 0;
}
