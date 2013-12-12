// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to RKTAeroplane.h instead.

#import <CoreData/CoreData.h>
#import "RKTRemoteObject.h"

extern const struct RKTAeroplaneAttributes {
	__unsafe_unretained NSString *manufacturer;
	__unsafe_unretained NSString *model;
	__unsafe_unretained NSString *passengers;
} RKTAeroplaneAttributes;

extern const struct RKTAeroplaneRelationships {
	__unsafe_unretained NSString *category;
} RKTAeroplaneRelationships;

extern const struct RKTAeroplaneFetchedProperties {
} RKTAeroplaneFetchedProperties;

@class RKTCategory;





@interface RKTAeroplaneID : NSManagedObjectID {}
@end

@interface _RKTAeroplane : RKTRemoteObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (RKTAeroplaneID*)objectID;





@property (nonatomic, strong) NSString* manufacturer;



//- (BOOL)validateManufacturer:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* model;



//- (BOOL)validateModel:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* passengers;



@property int16_t passengersValue;
- (int16_t)passengersValue;
- (void)setPassengersValue:(int16_t)value_;

//- (BOOL)validatePassengers:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) RKTCategory *category;

//- (BOOL)validateCategory:(id*)value_ error:(NSError**)error_;





@end

@interface _RKTAeroplane (CoreDataGeneratedAccessors)

@end

@interface _RKTAeroplane (CoreDataGeneratedPrimitiveAccessors)


- (NSString*)primitiveManufacturer;
- (void)setPrimitiveManufacturer:(NSString*)value;




- (NSString*)primitiveModel;
- (void)setPrimitiveModel:(NSString*)value;




- (NSNumber*)primitivePassengers;
- (void)setPrimitivePassengers:(NSNumber*)value;

- (int16_t)primitivePassengersValue;
- (void)setPrimitivePassengersValue:(int16_t)value_;





- (RKTCategory*)primitiveCategory;
- (void)setPrimitiveCategory:(RKTCategory*)value;


@end
