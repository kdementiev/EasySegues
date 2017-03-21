//
//  UIViewController+EasySegues.h
//  EasySegues
//
//  Created by Konstantin Dementiev on 8/30/16.
//  Copyright © 2016 Konstantin Dementiev. All rights reserved.
//
@import UIKit;

typedef void(^UIViewControllerSeguesPrepareCallback)(UIViewController* target);

@interface UIViewController (EasySegues)
- (void)performSegueWithIdentifier:(NSString *)identifier prepareCallback:(UIViewControllerSeguesPrepareCallback)callback;
@end
