//
//  AddToDoViewController.m
//  ToDoList
//
//  Created by Daniel Kwiatkowski on 2015-05-30.
//  Copyright (c) 2015 Daniel Kwiatkowski. All rights reserved.
//

#import "AddToDoViewController.h"
#import "ToDoItem.h"


@interface AddToDoViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *saveButton;




@end

@implementation AddToDoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if(sender != self.saveButton) return;
    
    if (self.textField.text.length > 0) {
        self.toDoItem = [[ToDoItem alloc]init];
        self.toDoItem.itemName = self.textField.text;
        self.toDoItem.completed = NO;
        
    }
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}


@end
