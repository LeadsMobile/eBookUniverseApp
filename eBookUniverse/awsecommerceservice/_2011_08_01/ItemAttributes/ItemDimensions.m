// Generated by xsd compiler for ios/objective-c
// DO NOT CHANGE!

#import <Foundation/Foundation.h>
#import "ItemDimensions.h"
#import "DecimalWithUnits.h"

@implementation ItemDimensions

@synthesize height = _height;
@synthesize length = _length;
@synthesize weight = _weight;
@synthesize width = _width;

// class meta-data method
// note: this method is only for internal use, DO NOT CHANGE!
+(PicoClassSchema *)getClassMetaData {
    return nil;
}

// property meta-data method
// note: this method is only for internal use, DO NOT CHANGE!
+(NSMutableDictionary *)getPropertyMetaData {
    NSMutableDictionary *map = [NSMutableDictionary dictionary];
    
    PicoPropertySchema *ps = nil;
    ps = [[PicoPropertySchema alloc] initWithKind:PICO_KIND_ELEMENT xmlName:@"Height" propertyName:@"height" type:PICO_TYPE_OBJECT clazz:[DecimalWithUnits class]];
    map[@"height"] = ps;
    ps = [[PicoPropertySchema alloc] initWithKind:PICO_KIND_ELEMENT xmlName:@"Length" propertyName:@"length" type:PICO_TYPE_OBJECT clazz:[DecimalWithUnits class]];
    map[@"length"] = ps;
    ps = [[PicoPropertySchema alloc] initWithKind:PICO_KIND_ELEMENT xmlName:@"Weight" propertyName:@"weight" type:PICO_TYPE_OBJECT clazz:[DecimalWithUnits class]];
    map[@"weight"] = ps;
    ps = [[PicoPropertySchema alloc] initWithKind:PICO_KIND_ELEMENT xmlName:@"Width" propertyName:@"width" type:PICO_TYPE_OBJECT clazz:[DecimalWithUnits class]];
    map[@"width"] = ps;
    
    return map;
}




@end