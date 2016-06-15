//  FISAppDelegate.m

#import "FISAppDelegate.h"
#import "FISPet.h"
#import "FISDog.h"

@implementation FISAppDelegate
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    FISDog *dog = [[FISDog alloc] init];
    NSLog([dog assaultTheMailman]);
    FISPet *dogCastToPet = (FISPet *)dog;
    NSLog([dogCastToPet makeASound]);
    
    FISPet *pet = [[FISPet alloc] init];
    FISDog *petCastDownToDog = (FISDog *)pet;
    NSLog([petCastDownToDog makeASound]);
    //NSLog([petCastDownToDog assaultTheMailman]);
    
    NSLog([(FISDog *)dogCastToPet assaultTheMailman]);
    
    return YES;
}

@end
