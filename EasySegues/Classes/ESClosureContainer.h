//
//  ESClosureContainer.h
//  EasySegues
//
//  Created by Konstantine Dementiev on 10/18/17.
//

@import Foundation;
@import UIKit;

#import "UIViewController+EasySegues.h"

@interface ESClosureContainer : NSObject

@property (nonatomic) UIViewControllerSeguesPrepareCallback callback;
    
@end
