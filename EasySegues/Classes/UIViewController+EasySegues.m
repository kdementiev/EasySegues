//
//  UIViewController+EasySegues.m
//  EasySegues
//
//  Created by Konstantin Dementiev on 8/30/16.
//  Copyright © 2016 Konstantin Dementiev. All rights reserved.
//

#import "UIViewController+EasySegues.h"

#import <objc/runtime.h>

@implementation UIViewController (EasySegues)

+ (void)load {

    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        Class class = [self class];
        
        Method targetMethod = class_getInstanceMethod(class, @selector(prepareForSegue:sender:));
        Method redirectMethod = class_getInstanceMethod(class, @selector(prepareDataForSegue:sender:));
        
        method_exchangeImplementations(targetMethod, redirectMethod);
    });
}

- (void)performSegueWithIdentifier:(NSString *)identifier prepareCallback:(UIViewControllerSeguesPrepareCallback)callback {
    [self performSegueWithIdentifier:identifier sender:callback];
}

- (void)prepareDataForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([sender isKindOfClass: NSClassFromString(@"NSBlock")]) {
        UIViewControllerSeguesPrepareCallback callback = sender;
        callback(segue.destinationViewController);
    }
    
    [self prepareDataForSegue:segue sender:self];
}

@end
