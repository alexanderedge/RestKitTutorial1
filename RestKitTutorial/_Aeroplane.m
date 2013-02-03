// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Aeroplane.m instead.

#import "_Aeroplane.h"

const struct AeroplaneAttributes AeroplaneAttributes = {
	.manufacturer = @"manufacturer",
	.model = @"model",
	.passengers = @"passengers",
};

const struct AeroplaneRelationships AeroplaneRelationships = {
	.category = @"category",
};

const struct AeroplaneFetchedProperties AeroplaneFetchedProperties = {
};

@implementation AeroplaneID
@end

@implementation _Aeroplane

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Aeroplane" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Aeroplane";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Aeroplane" inManagedObjectContext:moc_];
}

- (AeroplaneID*)objectID {
	return (AeroplaneID*)[super objectID];
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
