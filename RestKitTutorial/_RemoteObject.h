// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to RemoteObject.h instead.

#import <CoreData/CoreData.h>


extern const struct RemoteObjectAttributes {
	__unsafe_unretained NSString *createdAt;
	__unsafe_unretained NSString *objectId;
	__unsafe_unretained NSString *updatedAt;
} RemoteObjectAttributes;

extern const struct RemoteObjectRelationships {
} RemoteObjectRelationships;

extern const struct RemoteObjectFetchedProperties {
} RemoteObjectFetchedProperties;






@interface RemoteObjectID : NSManagedObjectID {}
@end

@interface _RemoteObject : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (RemoteObjectID*)objectID;





@property (nonatomic, strong) NSDate* createdAt;



//- (BOOL)validateCreatedAt:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* objectId;



//- (BOOL)validateObjectId:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSDate* updatedAt;



//- (BOOL)validateUpdatedAt:(id*)value_ error:(NSError**)error_;






@end

@interface _RemoteObject (CoreDataGeneratedAccessors)

@end

@interface _RemoteObject (CoreDataGeneratedPrimitiveAccessors)


- (NSDate*)primitiveCreatedAt;
- (void)setPrimitiveCreatedAt:(NSDate*)value;




- (NSString*)primitiveObjectId;
- (void)setPrimitiveObjectId:(NSString*)value;




- (NSDate*)primitiveUpdatedAt;
- (void)setPrimitiveUpdatedAt:(NSDate*)value;




@end
