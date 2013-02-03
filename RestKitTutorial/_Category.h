// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Category.h instead.

#import <CoreData/CoreData.h>
#import "RemoteObject.h"

extern const struct CategoryAttributes {
	__unsafe_unretained NSString *name;
} CategoryAttributes;

extern const struct CategoryRelationships {
	__unsafe_unretained NSString *aeroplanes;
} CategoryRelationships;

extern const struct CategoryFetchedProperties {
} CategoryFetchedProperties;

@class Aeroplane;



@interface CategoryID : NSManagedObjectID {}
@end

@interface _Category : RemoteObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (CategoryID*)objectID;





@property (nonatomic, strong) NSString* name;



//- (BOOL)validateName:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSSet *aeroplanes;

- (NSMutableSet*)aeroplanesSet;





@end

@interface _Category (CoreDataGeneratedAccessors)

- (void)addAeroplanes:(NSSet*)value_;
- (void)removeAeroplanes:(NSSet*)value_;
- (void)addAeroplanesObject:(Aeroplane*)value_;
- (void)removeAeroplanesObject:(Aeroplane*)value_;

@end

@interface _Category (CoreDataGeneratedPrimitiveAccessors)


- (NSString*)primitiveName;
- (void)setPrimitiveName:(NSString*)value;





- (NSMutableSet*)primitiveAeroplanes;
- (void)setPrimitiveAeroplanes:(NSMutableSet*)value;


@end
