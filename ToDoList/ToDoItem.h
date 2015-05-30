//
//  ToDoItem.h
//  ToDoList
//
//  Created by Daniel Kwiatkowski on 2015-05-30.
//  Copyright (c) 2015 Daniel Kwiatkowski. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ToDoItem : NSObject

@property NSString *itemName;
@property BOOL completed;
@property (readonly) NSDate *creationDate;

@end
