// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to RKTRemoteObject.h instead.

#import <CoreData/CoreData.h>


extern const struct RKTRemoteObjectAttributes {
	__unsafe_unretained NSString *createdAt;
	__unsafe_unretained NSString *objectId;
	__unsafe_unretained NSString *updatedAt;
} RKTRemoteObjectAttributes;

extern const struct RKTRemoteObjectRelationships {
} RKTRemoteObjectRelationships;

extern const struct RKTRemoteObjectFetchedProperties {
} RKTRemoteObjectFetchedProperties;






@interface RKTRemoteObjectID : NSManagedObjectID {}
@end

@interface _RKTRemoteObject : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (RKTRemoteObjectID*)objectID;





@property (nonatomic, strong) NSDate* createdAt;



//- (BOOL)validateCreatedAt:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* objectId;



//- (BOOL)validateObjectId:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSDate* updatedAt;



//- (BOOL)validateUpdatedAt:(id*)value_ error:(NSError**)error_;






@end

@interface _RKTRemoteObject (CoreDataGeneratedAccessors)

@end

@interface _RKTRemoteObject (CoreDataGeneratedPrimitiveAccessors)


- (NSDate*)primitiveCreatedAt;
- (void)setPrimitiveCreatedAt:(NSDate*)value;




- (NSString*)primitiveObjectId;
- (void)setPrimitiveObjectId:(NSString*)value;




- (NSDate*)primitiveUpdatedAt;
- (void)setPrimitiveUpdatedAt:(NSDate*)value;




@end
