//
//  PBClient.h
//  PhotoBomb
//
//  Created by Peter Zakin on 12/28/13.
//  Copyright (c) 2013 APPZ. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PBClient : NSObject


@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

@property (strong, atomic) NSString *userFullName;

+ (PBClient *)sharedClient;

@end
