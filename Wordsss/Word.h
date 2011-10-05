//
//  Word.h
//  Wordsss
//
//  Created by RenKelvin on 11-10-5.
//  Copyright (c) 2011年 Ren Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Word : NSManagedObject {
@private
}
@property (nonatomic, retain) NSNumber * id;
@property (nonatomic, retain) NSString * word;
@property (nonatomic, retain) NSSet *word_relateTo_wordRecord;
@property (nonatomic, retain) NSManagedObject *word_is_bookWord;
@property (nonatomic, retain) NSSet *word_has_rootaffix;
@property (nonatomic, retain) NSManagedObject *word_is_listWord;
@property (nonatomic, retain) NSSet *word_has_sense;
@property (nonatomic, retain) NSSet *word_has_association;
@end

@interface Word (CoreDataGeneratedAccessors)
- (void)addWord_relateTo_wordRecordObject:(NSManagedObject *)value;
- (void)removeWord_relateTo_wordRecordObject:(NSManagedObject *)value;
- (void)addWord_relateTo_wordRecord:(NSSet *)value;
- (void)removeWord_relateTo_wordRecord:(NSSet *)value;
- (void)addWord_has_rootaffixObject:(NSManagedObject *)value;
- (void)removeWord_has_rootaffixObject:(NSManagedObject *)value;
- (void)addWord_has_rootaffix:(NSSet *)value;
- (void)removeWord_has_rootaffix:(NSSet *)value;
- (void)addWord_has_senseObject:(NSManagedObject *)value;
- (void)removeWord_has_senseObject:(NSManagedObject *)value;
- (void)addWord_has_sense:(NSSet *)value;
- (void)removeWord_has_sense:(NSSet *)value;
- (void)addWord_has_associationObject:(NSManagedObject *)value;
- (void)removeWord_has_associationObject:(NSManagedObject *)value;
- (void)addWord_has_association:(NSSet *)value;
- (void)removeWord_has_association:(NSSet *)value;

@end
