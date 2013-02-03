// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Aeroplane.h instead.

#import <CoreData/CoreData.h>
#import "RemoteObject.h"

extern const struct AeroplaneAttributes {
	__unsafe_unretained NSString *manufacturer;
	__unsafe_unretained NSString *model;
	__unsafe_unretained NSString *passengers;
} AeroplaneAttributes;

extern const struct AeroplaneRelationships {
	__unsafe_unretained NSString *category;
} AeroplaneRelationships;

extern const struct AeroplaneFetchedProperties {
} AeroplaneFetchedProperties;

@class Category;





@interface AeroplaneID : NSManagedObjectID {}
@end

@interface _Aeroplane : RemoteObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (AeroplaneID*)objectID;





@property (nonatomic, strong) NSString* manufacturer;



//- (BOOL)validateManufacturer:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* model;



//- (BOOL)validateModel:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* passengers;



@property int16_t passengersValue;
- (int16_t)passengersValue;
- (void)setPassengersValue:(int16_t)value_;

//- (BOOL)validatePassengers:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) Category *category;

//- (BOOL)validateCategory:(id*)value_ error:(NSError**)error_;





@end

@interface _Aeroplane (CoreDataGeneratedAccessors)

@end

@interface _Aeroplane (CoreDataGeneratedPrimitiveAccessors)


- (NSString*)primitiveManufacturer;
- (void)setPrimitiveManufacturer:(NSString*)value;




- (NSString*)primitiveModel;
- (void)setPrimitiveModel:(NSString*)value;




- (NSNumber*)primitivePassengers;
- (void)setPrimitivePassengers:(NSNumber*)value;

- (int16_t)primitivePassengersValue;
- (void)setPrimitivePassengersValue:(int16_t)value_;





- (Category*)primitiveCategory;
- (void)setPrimitiveCategory:(Category*)value;


@end
