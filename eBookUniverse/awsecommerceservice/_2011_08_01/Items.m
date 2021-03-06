// Generated by xsd compiler for ios/objective-c
// DO NOT CHANGE!

#import <Foundation/Foundation.h>
#import "Items.h"
#import "Item.h"
#import "SearchBinSets.h"
#import "SearchResultsMap.h"
#import "Request.h"
#import "CorrectedQuery.h"

@implementation Items

@synthesize request = _request;
@synthesize correctedQuery = _correctedQuery;
@synthesize qid = _qid;
@synthesize engineQuery = _engineQuery;
@synthesize totalResults = _totalResults;
@synthesize totalPages = _totalPages;
@synthesize moreSearchResultsUrl = _moreSearchResultsUrl;
@synthesize searchResultsMap = _searchResultsMap;
@synthesize item = _item;
@synthesize searchBinSets = _searchBinSets;

// class meta-data method
// note: this method is only for internal use, DO NOT CHANGE!
+(PicoClassSchema *)getClassMetaData {
    PicoClassSchema *cs = [[PicoClassSchema alloc] initWithXmlName:@"Items" nsUri:@"http://webservices.amazon.com/AWSECommerceService/2011-08-01"];
    //[cs autorelease];
    return cs;
}

// property meta-data method
// note: this method is only for internal use, DO NOT CHANGE!
+(NSMutableDictionary *)getPropertyMetaData {
    NSMutableDictionary *map = [NSMutableDictionary dictionary];
    
    PicoPropertySchema *ps = nil;
    ps = [[PicoPropertySchema alloc] initWithKind:PICO_KIND_ELEMENT xmlName:@"Request" propertyName:@"request" type:PICO_TYPE_OBJECT clazz:[Request class]];
    map[@"request"] = ps;
    ps = [[PicoPropertySchema alloc] initWithKind:PICO_KIND_ELEMENT xmlName:@"CorrectedQuery" propertyName:@"correctedQuery" type:PICO_TYPE_OBJECT clazz:[CorrectedQuery class]];
    map[@"correctedQuery"] = ps;
    ps = [[PicoPropertySchema alloc] initWithKind:PICO_KIND_ELEMENT xmlName:@"Qid" propertyName:@"qid" type:PICO_TYPE_STRING clazz:nil];
    map[@"qid"] = ps;
    ps = [[PicoPropertySchema alloc] initWithKind:PICO_KIND_ELEMENT xmlName:@"EngineQuery" propertyName:@"engineQuery" type:PICO_TYPE_STRING clazz:nil];
    map[@"engineQuery"] = ps;
    ps = [[PicoPropertySchema alloc] initWithKind:PICO_KIND_ELEMENT xmlName:@"TotalResults" propertyName:@"totalResults" type:PICO_TYPE_LONG clazz:nil];
    map[@"totalResults"] = ps;
    ps = [[PicoPropertySchema alloc] initWithKind:PICO_KIND_ELEMENT xmlName:@"TotalPages" propertyName:@"totalPages" type:PICO_TYPE_LONG clazz:nil];
    map[@"totalPages"] = ps;
    ps = [[PicoPropertySchema alloc] initWithKind:PICO_KIND_ELEMENT xmlName:@"MoreSearchResultsUrl" propertyName:@"moreSearchResultsUrl" type:PICO_TYPE_STRING clazz:nil];
    map[@"moreSearchResultsUrl"] = ps;
    ps = [[PicoPropertySchema alloc] initWithKind:PICO_KIND_ELEMENT xmlName:@"SearchResultsMap" propertyName:@"searchResultsMap" type:PICO_TYPE_OBJECT clazz:[SearchResultsMap class]];
    map[@"searchResultsMap"] = ps;
    ps = [[PicoPropertySchema alloc] initWithKind:PICO_KIND_ELEMENT_ARRAY xmlName:@"Item" propertyName:@"item" type:PICO_TYPE_OBJECT clazz:[Item class]];
    map[@"item"] = ps;
    ps = [[PicoPropertySchema alloc] initWithKind:PICO_KIND_ELEMENT xmlName:@"SearchBinSets" propertyName:@"searchBinSets" type:PICO_TYPE_OBJECT clazz:[SearchBinSets class]];
    map[@"searchBinSets"] = ps;
    
    return map;
}




@end
