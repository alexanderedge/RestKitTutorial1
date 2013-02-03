// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to RemoteObject.m instead.

#import "_RemoteObject.h"

const struct RemoteObjectAttributes RemoteObjectAttributes = {
	.createdAt = @"createdAt",
	.objectId = @"objectId",
	.updatedAt = @"updatedAt",
};

const struct RemoteObjectRelationships RemoteObjectRelationships = {
};

const struct RemoteObjectFetchedProperties RemoteObjectFetchedProperties = {
};

@implementation RemoteObjectID
@end

@implementation _RemoteObject

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"RemoteObject" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"RemoteObject";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"RemoteObject" inManagedObjectContext:moc_];
}

- (RemoteObjectID*)objectID {
	return (RemoteObjectID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	

	return keyPaths;
}




@dynamic createdAt;






@dynamic objectId;






@dynamic updatedAt;











@end
