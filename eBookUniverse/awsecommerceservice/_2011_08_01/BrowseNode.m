// Generated by xsd compiler for ios/objective-c
// DO NOT CHANGE!

#import <Foundation/Foundation.h>
#import "BrowseNode.h"
#import "NewReleases.h"
#import "TopItemSet.h"
#import "Ancestors.h"
#import "Children.h"
#import "TopSellers.h"
#import "Properties.h"

@implementation BrowseNode

@synthesize browseNodeId = _browseNodeId;
@synthesize name = _name;
@synthesize isCategoryRoot = _isCategoryRoot;
@synthesize properties = _properties;
@synthesize children = _children;
@synthesize ancestors = _ancestors;
@synthesize topSellers = _topSellers;
@synthesize theNewReleases = _theNewReleases;
@synthesize topItemSet = _topItemSet;

// class meta-data method
// note: this method is only for internal use, DO NOT CHANGE!
+(PicoClassSchema *)getClassMetaData {
    PicoClassSchema *cs = [[PicoClassSchema alloc] initWithXmlName:@"BrowseNode" nsUri:@"http://webservices.amazon.com/AWSECommerceService/2011-08-01"];
    //[cs autorelease];
    return cs;
}

// property meta-data method
// note: this method is only for internal use, DO NOT CHANGE!
+(NSMutableDictionary *)getPropertyMetaData {
    NSMutableDictionary *map = [NSMutableDictionary dictionary];
    
    PicoPropertySchema *ps = nil;
    ps = [[PicoPropertySchema alloc] initWithKind:PICO_KIND_ELEMENT xmlName:@"BrowseNodeId" propertyName:@"browseNodeId" type:PICO_TYPE_STRING clazz:nil];
    map[@"browseNodeId"] = ps;
    ps = [[PicoPropertySchema alloc] initWithKind:PICO_KIND_ELEMENT xmlName:@"Name" propertyName:@"name" type:PICO_TYPE_STRING clazz:nil];
    map[@"name"] = ps;
    ps = [[PicoPropertySchema alloc] initWithKind:PICO_KIND_ELEMENT xmlName:@"IsCategoryRoot" propertyName:@"isCategoryRoot" type:PICO_TYPE_BOOL clazz:nil];
    map[@"isCategoryRoot"] = ps;
    ps = [[PicoPropertySchema alloc] initWithKind:PICO_KIND_ELEMENT xmlName:@"Properties" propertyName:@"properties" type:PICO_TYPE_OBJECT clazz:[Properties class]];
    map[@"properties"] = ps;
    ps = [[PicoPropertySchema alloc] initWithKind:PICO_KIND_ELEMENT xmlName:@"Children" propertyName:@"children" type:PICO_TYPE_OBJECT clazz:[Children class]];
    map[@"children"] = ps;
    ps = [[PicoPropertySchema alloc] initWithKind:PICO_KIND_ELEMENT xmlName:@"Ancestors" propertyName:@"ancestors" type:PICO_TYPE_OBJECT clazz:[Ancestors class]];
    map[@"ancestors"] = ps;
    ps = [[PicoPropertySchema alloc] initWithKind:PICO_KIND_ELEMENT xmlName:@"TopSellers" propertyName:@"topSellers" type:PICO_TYPE_OBJECT clazz:[TopSellers class]];
    map[@"topSellers"] = ps;
    ps = [[PicoPropertySchema alloc] initWithKind:PICO_KIND_ELEMENT xmlName:@"NewReleases" propertyName:@"newReleases" type:PICO_TYPE_OBJECT clazz:[NewReleases class]];
    map[@"newReleases"] = ps;
    ps = [[PicoPropertySchema alloc] initWithKind:PICO_KIND_ELEMENT_ARRAY xmlName:@"TopItemSet" propertyName:@"topItemSet" type:PICO_TYPE_OBJECT clazz:[TopItemSet class]];
    map[@"topItemSet"] = ps;
    
    return map;
}




@end
