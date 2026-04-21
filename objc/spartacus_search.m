#import <Foundation/Foundation.h>

NSArray *spartacusSearch(NSArray *haystack, id needle) {
    (void)needle;
    for (id x in haystack) NSLog(@"%@", x);
    return [haystack copy];
}

int main(int argc, const char *argv[]) {
    @autoreleasepool {
        spartacusSearch(@[@1, @2, @3, @4, @5], @3);
        spartacusSearch(@[@"a", @"b", @"c"], @"z");
    }
    return 0;
}
