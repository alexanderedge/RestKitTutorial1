// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to RKTCategory.m instead.

#import "_RKTCategory.h"

const struct RKTCategoryAttributes RKTCategoryAttributes = {
	.name = @"name",
};

const struct RKTCategoryRelationships RKTCategoryRelationships = {
	.aeroplanes = @"aeroplanes",
};

const struct RKTCategoryFetchedProperties RKTCategoryFetchedProperties = {
};

@implementation RKTCategoryID
@end

@implementation _RKTCategory

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"RKTCategory" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"RKTCategory";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"RKTCategory" inManagedObjectContext:moc_];
}

- (RKTCategoryID*)objectID {
	return (RKTCategoryID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	

	return keyPaths;
}




@dynamic name;






@dynamic aeroplanes;

	
- (NSMutableSet*)aeroplanesSet {
	[self willAccessValueForKey:@"aeroplanes"];
  
	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"aeroplanes"];
  
	[self didAccessValueForKey:@"aeroplanes"];
	return result;
}
	






@end
