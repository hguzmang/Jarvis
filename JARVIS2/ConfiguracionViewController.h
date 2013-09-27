//
//  ConfiguracionViewController.h
//  JARVIS2
//
//  Created by Panda on 28/06/13.
//  Copyright (c) 2013 Francisco Esteban Aguilar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ConfiguracionViewController: UIViewController {
    NSDictionary *tableContents;
    NSArray *sortedKeys;
}

@property (nonatomic,retain) NSDictionary *tableContents;
@property (nonatomic,retain) NSArray *sortedKeys;
@end