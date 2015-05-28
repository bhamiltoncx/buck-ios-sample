#import <XCTest/XCTest.h>
#import <UIKit/UIKit.h>

#import "App.h"

@interface AppTest : XCTestCase
@end

@implementation AppTest

- (void)testMagicValue {
  App *app = (App *)[[UIApplication sharedApplication] delegate];
  XCTAssertEqual(42, [app magicValue], @"Magic value not exposed by test host");
}

@end
