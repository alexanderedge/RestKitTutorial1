// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to RKTAeroplane.m instead.

#import "_RKTAeroplane.h"

const struct RKTAeroplaneAttributes RKTAeroplaneAttributes = {
	.manufacturer = @"manufacturer",
	.model = @"model",
	.passengers = @"passengers",
};

const struct RKTAeroplaneRelationships RKTAeroplaneRelationships = {
	.category = @"category",
};

const struct RKTAeroplaneFetchedProperties RKTAeroplaneFetchedProperties = {
};

@implementation RKTAeroplaneID
@end

@implementation _RKTAeroplane

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"RKTAeroplane" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"RKTAeroplane";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"RKTAeroplane" inManagedObjectContext:moc_];
}

- (RKTAeroplaneID*)objectID {
	return (RKTAeroplaneID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	
	if ([key isEqualToString:@"passengersValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"passengers"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}

	return keyPaths;
}




@dynamic manufacturer;






@dynamic model;






@dynamic passengers;



- (int16_t)passengersValue {
	NSNumber *result = [self passengers];
	return [result shortValue];
}

- (void)setPassengersValue:(int16_t)value_ {
	[self setPassengers:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitivePassengersValue {
	NSNumber *result = [self primitivePassengers];
	return [result shortValue];
}

- (void)setPrimitivePassengersValue:(int16_t)value_ {
	[self setPrimitivePassengers:[NSNumber numberWithShort:value_]];
}





@dynamic category;

	






@end
