// Generated by xsd compiler for ios/objective-c
// DO NOT CHANGE!

#import <Foundation/Foundation.h>
#import "Offer.h"
#import "OfferAttributes.h"
#import "Merchant.h"
#import "LoyaltyPoints.h"
#import "Promotions.h"
#import "OfferListing.h"

@implementation Offer

@synthesize merchant = _merchant;
@synthesize offerAttributes = _offerAttributes;
@synthesize offerListing = _offerListing;
@synthesize loyaltyPoints = _loyaltyPoints;
@synthesize promotions = _promotions;

// class meta-data method
// note: this method is only for internal use, DO NOT CHANGE!
+(PicoClassSchema *)getClassMetaData {
    PicoClassSchema *cs = [[PicoClassSchema alloc] initWithXmlName:@"Offer" nsUri:@"http://webservices.amazon.com/AWSECommerceService/2011-08-01"];
   // [cs autorelease];
    return cs;
}

// property meta-data method
// note: this method is only for internal use, DO NOT CHANGE!
+(NSMutableDictionary *)getPropertyMetaData {
    NSMutableDictionary *map = [NSMutableDictionary dictionary];
    
    PicoPropertySchema *ps = nil;
    ps = [[PicoPropertySchema alloc] initWithKind:PICO_KIND_ELEMENT xmlName:@"Merchant" propertyName:@"merchant" type:PICO_TYPE_OBJECT clazz:[Merchant class]];
    map[@"merchant"] = ps;
    ps = [[PicoPropertySchema alloc] initWithKind:PICO_KIND_ELEMENT xmlName:@"OfferAttributes" propertyName:@"offerAttributes" type:PICO_TYPE_OBJECT clazz:[OfferAttributes class]];
    map[@"offerAttributes"] = ps;
    ps = [[PicoPropertySchema alloc] initWithKind:PICO_KIND_ELEMENT_ARRAY xmlName:@"OfferListing" propertyName:@"offerListing" type:PICO_TYPE_OBJECT clazz:[OfferListing class]];
    map[@"offerListing"] = ps;
    ps = [[PicoPropertySchema alloc] initWithKind:PICO_KIND_ELEMENT xmlName:@"LoyaltyPoints" propertyName:@"loyaltyPoints" type:PICO_TYPE_OBJECT clazz:[LoyaltyPoints class]];
    map[@"loyaltyPoints"] = ps;
    ps = [[PicoPropertySchema alloc] initWithKind:PICO_KIND_ELEMENT xmlName:@"Promotions" propertyName:@"promotions" type:PICO_TYPE_OBJECT clazz:[Promotions class]];
    map[@"promotions"] = ps;
    
    return map;
}




@end
