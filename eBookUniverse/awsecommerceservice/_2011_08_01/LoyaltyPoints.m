// Generated by xsd compiler for ios/objective-c
// DO NOT CHANGE!

#import <Foundation/Foundation.h>
#import "LoyaltyPoints.h"
#import "Price.h"

@implementation LoyaltyPoints

@synthesize points = _points;
@synthesize typicalRedemptionValue = _typicalRedemptionValue;

// class meta-data method
// note: this method is only for internal use, DO NOT CHANGE!
+(PicoClassSchema *)getClassMetaData {
    PicoClassSchema *cs = [[PicoClassSchema alloc] initWithXmlName:@"LoyaltyPoints" nsUri:@"http://webservices.amazon.com/AWSECommerceService/2011-08-01"];
   // [cs autorelease];
    return cs;
}

// property meta-data method
// note: this method is only for internal use, DO NOT CHANGE!
+(NSMutableDictionary *)getPropertyMetaData {
    NSMutableDictionary *map = [NSMutableDictionary dictionary];
    
    PicoPropertySchema *ps = nil;
    ps = [[PicoPropertySchema alloc] initWithKind:PICO_KIND_ELEMENT xmlName:@"Points" propertyName:@"points" type:PICO_TYPE_LONG clazz:nil];
    map[@"points"] = ps;
    ps = [[PicoPropertySchema alloc] initWithKind:PICO_KIND_ELEMENT xmlName:@"TypicalRedemptionValue" propertyName:@"typicalRedemptionValue" type:PICO_TYPE_OBJECT clazz:[Price class]];
    map[@"typicalRedemptionValue"] = ps;
    
    return map;
}




@end