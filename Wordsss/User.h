//
//  User.h
//  Wordsss
//
//  Created by Ren Kelvin on 10/8/11.
//  Copyright (c) 2011 Ren Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface User : NSManagedObject {
@private
}
@property (nonatomic, retain) NSString * username;
@property (nonatomic, retain) NSNumber * id;
@property (nonatomic, retain) NSString * password;
@property (nonatomic, retain) NSManagedObject *user_has_statusData;
@property (nonatomic, retain) NSManagedObject *user_has_metaData;
@property (nonatomic, retain) NSManagedObject *user_has_profile;

@end
