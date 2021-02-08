//
//  main.m
//  WordSearch
//
//  Created by Оля Качинская on 08.02.2021.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //read file propernames
        NSString *names = [NSString stringWithContentsOfFile:@"/Users/maryanovna/Documents/untitled folder/obj-c/WordSearch/propernames.txt" encoding:NSUTF8StringEncoding error:NULL];
        
        // read file word
        NSString *words = [NSString stringWithContentsOfFile:@"/Users/maryanovna/Documents/untitled folder/obj-c/WordSearch/words.txt" encoding:NSUTF8StringEncoding error:NULL];
        
        //splitting a file propername into an array of strings
        NSArray *nameArr = [names componentsSeparatedByString:@"\n"];
        
        //splitting a file word into an array of strings
        NSArray *wordArr = [words componentsSeparatedByString:@"\n"];
        
        //strings comparing 
        for (NSString *nameStr in nameArr)
        {
            for (NSString *wordStr in wordArr)
            {
                if ([nameStr caseInsensitiveCompare:wordStr] == NSOrderedSame) NSLog(@"%@ - %@", nameStr, wordStr);
            }
        }
        
        
//        NSString *a = @"ABC";
//        NSString *b = @"aBc";
//
//        if ([a caseInsensitiveCompare:b] == NSOrderedSame)
//        {
//              NSLog(@"a and b аге equal");
//        }
//        if ([a caseInsensitiveCompare:b] == NSOrderedAscending)
//        {
//            NSLog(@"a comes before b");
//        }
//        if ([a caseInsensitiveCompare:b] == NSOrderedDescending)
//        {
//            NSLog(@"b comes before a");
//        }
        
    }
    return 0;
}
