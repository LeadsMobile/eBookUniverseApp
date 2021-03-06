// Generated by xsd compiler for ios/objective-c
// DO NOT CHANGE!

#import <Foundation/Foundation.h>
#import "PicoClassSchema.h"
#import "PicoPropertySchema.h"
#import "PicoConstants.h"
#import "PicoBindable.h"


@class ItemSearchRequest;
@class BrowseNodeLookupRequest;
@class CartGetRequest;
@class CartAddRequest;
@class SimilarityLookupRequest;
@class ItemLookupRequest;
@class Errors;
@class CartCreateRequest;
@class CartClearRequest;
@class CartModifyRequest;

/**
 (public class)
 
 @ingroup AWSECommerceServicePortType
*/
@interface Request : NSObject <PicoBindable> {

@private
    NSString *_isValid;
    BrowseNodeLookupRequest *_browseNodeLookupRequest;
    ItemSearchRequest *_itemSearchRequest;
    ItemLookupRequest *_itemLookupRequest;
    SimilarityLookupRequest *_similarityLookupRequest;
    CartGetRequest *_cartGetRequest;
    CartAddRequest *_cartAddRequest;
    CartCreateRequest *_cartCreateRequest;
    CartModifyRequest *_cartModifyRequest;
    CartClearRequest *_cartClearRequest;
    Errors *_errors;

}


/**
 (public property)
 
 type : NSString, wrapper for primitive string
*/
@property (nonatomic, strong) NSString *isValid;

/**
 (public property)
 
 type : class BrowseNodeLookupRequest
*/
@property (nonatomic, strong) BrowseNodeLookupRequest *browseNodeLookupRequest;

/**
 (public property)
 
 type : class ItemSearchRequest
*/
@property (nonatomic, strong) ItemSearchRequest *itemSearchRequest;

/**
 (public property)
 
 type : class ItemLookupRequest
*/
@property (nonatomic, strong) ItemLookupRequest *itemLookupRequest;

/**
 (public property)
 
 type : class SimilarityLookupRequest
*/
@property (nonatomic, strong) SimilarityLookupRequest *similarityLookupRequest;

/**
 (public property)
 
 type : class CartGetRequest
*/
@property (nonatomic, strong) CartGetRequest *cartGetRequest;

/**
 (public property)
 
 type : class CartAddRequest
*/
@property (nonatomic, strong) CartAddRequest *cartAddRequest;

/**
 (public property)
 
 type : class CartCreateRequest
*/
@property (nonatomic, strong) CartCreateRequest *cartCreateRequest;

/**
 (public property)
 
 type : class CartModifyRequest
*/
@property (nonatomic, strong) CartModifyRequest *cartModifyRequest;

/**
 (public property)
 
 type : class CartClearRequest
*/
@property (nonatomic, strong) CartClearRequest *cartClearRequest;

/**
 (public property)
 
 type : class Errors
*/
@property (nonatomic, strong) Errors *errors;


@end
