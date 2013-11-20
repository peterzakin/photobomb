//
//  PBAppDelegate.h
//  PhotoBomb
//
//  Created by Peter Zakin on 11/19/13.
//  Copyright (c) 2013 APPZ. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PBAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
