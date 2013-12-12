// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to RKTRemoteObject.m instead.

#import "_RKTRemoteObject.h"

const struct RKTRemoteObjectAttributes RKTRemoteObjectAttributes = {
	.createdAt = @"createdAt",
	.objectId = @"objectId",
	.updatedAt = @"updatedAt",
};

const struct RKTRemoteObjectRelationships RKTRemoteObjectRelationships = {
};

const struct RKTRemoteObjectFetchedProperties RKTRemoteObjectFetchedProperties = {
};

@implementation RKTRemoteObjectID
@end

@implementation _RKTRemoteObject

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"RKTRemoteObject" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"RKTRemoteObject";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"RKTRemoteObject" inManagedObjectContext:moc_];
}

- (RKTRemoteObjectID*)objectID {
	return (RKTRemoteObjectID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	

	return keyPaths;
}




@dynamic createdAt;






@dynamic objectId;






@dynamic updatedAt;











@end
