//
//  AGEAppDelegate.m
//  RestKitTutorial
//
//  Created by Alexander G Edge on 29/01/2013.
//  Copyright (c) 2013 Alexander G Edge. All rights reserved.
//

#import "RKTAppDelegate.h"

@implementation RKTAppDelegate



- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
#ifdef DEBUG
    
    RKLogConfigureByName("RestKit/Network", RKLogLevelTrace);
    RKLogConfigureByName("RestKit/ObjectMapping", RKLogLevelTrace);
    
#endif
    
    [self setupRestKit];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

- (void)setupRestKit{
    
    RKObjectManager *manager = [RKObjectManager managerWithBaseURL:[NSURL URLWithString:@"https://api.parse.com/1/"]];
    
    [[manager HTTPClient] setDefaultHeader:@"X-Parse-REST-API-Key" value:@"your key"];
    [[manager HTTPClient] setDefaultHeader:@"X-Parse-Application-Id" value:@"your key"];
    
    NSManagedObjectModel *managedObjectModel = [NSManagedObjectModel mergedModelFromBundles:nil];
    RKManagedObjectStore *managedObjectStore = [[RKManagedObjectStore alloc] initWithManagedObjectModel:managedObjectModel];
    manager.managedObjectStore = managedObjectStore;
    
    RKObjectMapping *errorMapping = [RKObjectMapping mappingForClass:[RKErrorMessage class]];
    
    [errorMapping addPropertyMapping:[RKAttributeMapping attributeMappingFromKeyPath:nil toKeyPath:@"errorMessage"]];
    
    RKResponseDescriptor *errorDescriptor = [RKResponseDescriptor responseDescriptorWithMapping:errorMapping
                                                                                    pathPattern:nil
                                                                                        keyPath:@"error"
                                                                                    statusCodes:RKStatusCodeIndexSetForClass(RKStatusCodeClassClientError)];
    
    [manager addResponseDescriptorsFromArray:@[errorDescriptor]];
    
    
    NSDictionary *parentObjectMapping = @{
                                                  @"objectId" : @"objectId",
                                                  @"updatedAt" : @"updatedAt",
                                                  @"createdAt" : @"createdAt",
                                                  };
    
    RKEntityMapping *categoryMapping = [RKEntityMapping mappingForEntityForName:NSStringFromClass([Category class]) inManagedObjectStore:manager.managedObjectStore];
    categoryMapping.identificationAttributes = @[ @"objectId" ];
    [categoryMapping addAttributeMappingsFromDictionary:@{
     @"name" : @"name"
     }];
    [categoryMapping addAttributeMappingsFromDictionary:parentObjectMapping];
    
        
    RKEntityMapping *aeroplaneMapping = [RKEntityMapping mappingForEntityForName:NSStringFromClass([Aeroplane class]) inManagedObjectStore:managedObjectStore];
    aeroplaneMapping.identificationAttributes = @[ @"objectId" ];
    [aeroplaneMapping addAttributeMappingsFromDictionary:@{
     @"manufacturer" : @"manufacturer",
     @"model" : @"model",
     @"passengers" : @"passengers",
     }];
    
    [aeroplaneMapping addAttributeMappingsFromDictionary:parentObjectMapping];
    
    [aeroplaneMapping addPropertyMapping:[RKRelationshipMapping relationshipMappingFromKeyPath:@"category" toKeyPath:@"category" withMapping:categoryMapping]];
    
    
    
    // Register our mappings with the provider
    
    [manager addResponseDescriptorsFromArray:@[
     
     [RKResponseDescriptor responseDescriptorWithMapping:aeroplaneMapping
                                             pathPattern:@"classes/Aeroplane"
                                                 keyPath:@"results"
                                             statusCodes:RKStatusCodeIndexSetForClass(RKStatusCodeClassSuccessful)]
     ]];

    /**
     Complete Core Data stack initialization
     */
    [managedObjectStore createPersistentStoreCoordinator];
    
    NSString *storePath = [RKApplicationDataDirectory() stringByAppendingPathComponent:@"Aeroplanes.sqlite"];
    
    NSError *error;
    
    NSPersistentStore *persistentStore = [managedObjectStore addSQLitePersistentStoreAtPath:storePath fromSeedDatabaseAtPath:nil  withConfiguration:nil options:@{NSMigratePersistentStoresAutomaticallyOption:@YES, NSInferMappingModelAutomaticallyOption:@YES} error:&error];
    
    NSAssert(persistentStore, @"Failed to add persistent store with error: %@", error);
    
    // Create the managed object contexts
    [managedObjectStore createManagedObjectContexts];
    
    // Configure a managed object cache to ensure we do not create duplicate objects
    managedObjectStore.managedObjectCache = [[RKInMemoryManagedObjectCache alloc] initWithManagedObjectContext:managedObjectStore.persistentStoreManagedObjectContext];
    
}

@end
