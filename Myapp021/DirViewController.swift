//
//  DirViewController.swift
//  Myapp021
//
//  Created by user20 on 2017/9/29.
//  Copyright © 2017年 Yvonne Big. All rights reserved.
//

import UIKit
import MapKit

class DirViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let start = CLLocationCoordinate2D(latitude: 24.180001,  longitude: 120.600295)
        let end = CLLocationCoordinate2D(latitude: 24.207796,  longitude: 120.599688)
        
        let start2 = MKPlacemark(coordinate: start)
        let end2 = MKPlacemark(coordinate: end)
        
        let item1 = MKMapItem(placemark: start2)    //導航的item 可以用陣列 可以有很多的點
        let item2 = MKMapItem(placemark: end2)
        
        let ps = [item1, item2]
        let mode = [MKLaunchOptionsDirectionsModeKey:MKLaunchOptionsDirectionsModeDriving]
        
        MKMapItem.openMaps(with: ps, launchOptions: mode)
    }

}
