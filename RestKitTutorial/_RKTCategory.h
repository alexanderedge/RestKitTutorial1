// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to RKTCategory.h instead.

#import <CoreData/CoreData.h>
#import "RKTRemoteObject.h"

extern const struct RKTCategoryAttributes {
	__unsafe_unretained NSString *name;
} RKTCategoryAttributes;

extern const struct RKTCategoryRelationships {
	__unsafe_unretained NSString *aeroplanes;
} RKTCategoryRelationships;

extern const struct RKTCategoryFetchedProperties {
} RKTCategoryFetchedProperties;

@class RKTAeroplane;



@interface RKTCategoryID : NSManagedObjectID {}
@end

@interface _RKTCategory : RKTRemoteObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (RKTCategoryID*)objectID;





@property (nonatomic, strong) NSString* name;



//- (BOOL)validateName:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSSet *aeroplanes;

- (NSMutableSet*)aeroplanesSet;





@end

@interface _RKTCategory (CoreDataGeneratedAccessors)

- (void)addAeroplanes:(NSSet*)value_;
- (void)removeAeroplanes:(NSSet*)value_;
- (void)addAeroplanesObject:(RKTAeroplane*)value_;
- (void)removeAeroplanesObject:(RKTAeroplane*)value_;

@end

@interface _RKTCategory (CoreDataGeneratedPrimitiveAccessors)


- (NSString*)primitiveName;
- (void)setPrimitiveName:(NSString*)value;





- (NSMutableSet*)primitiveAeroplanes;
- (void)setPrimitiveAeroplanes:(NSMutableSet*)value;


@end
