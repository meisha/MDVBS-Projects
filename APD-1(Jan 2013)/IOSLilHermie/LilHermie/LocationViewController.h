//
//  LocationViewController.h
//  LilHermie
//
//  Created by S. Meisha Ray on 1/19/13.
//  Copyright (c) 2013 Coder Girl Design. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface LocationViewController : UIViewController<MKMapViewDelegate>

@property (nonatomic, strong) IBOutlet MKMapView *mapView;

@end
