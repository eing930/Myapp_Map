//
//  ViewController.swift
//  Myapp021
//
//  Created by user20 on 2017/9/29.
//  Copyright © 2017年 Yvonne Big. All rights reserved.
//

import UIKit
import MapKit  //要記得import
class ViewController: UIViewController, MKMapViewDelegate {
    
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //產生中心點
        let center = CLLocation(latitude: 24.151198, longitude: 120.660483)
        centerLocation(location: center, mapView: mapView)
        
        //插針
        let ann = [MKPointAnnotation() , MKPointAnnotation()]
        ann[0].coordinate = CLLocationCoordinate2D(latitude: 24.151198, longitude:  120.660483)
        ann[0].title = "aaa"
        ann[1].coordinate = CLLocationCoordinate2D(latitude: 24.150258,  longitude: 120.663476)
        ann[1].title = "bbb"
        
        mapView.addAnnotations(ann)
        
        
        
  
//
//        //使用2d的
//        ann.coordinate = CLLocationCoordinate2D(latitude: 24.150752, longitude: 120.651636)
//        mapView.addAnnotation(ann)
//        ann.title = "好地方"
//        ann.subtitle = "偶在這裡"
//
//        mapView.addAnnotation(ann)

    }
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        print ("got it")
//        if annotation is MKAnnotation {
//            return nil
//        }
        
       // var annView = mapView.dequeueReusableAnnotationView(withIdentifier: "Pin") as? MKPinAnnotationView
        var annView = mapView.dequeueReusableAnnotationView(withIdentifier: "Pin")

        //第一次進來一定 nil   有註解的是玩針 沒註解的是玩圖
        if annView == nil {
            print("B")
            
            
           
           // annView = MKPinAnnotationView(annotation: annotation, reuseIdentifier: "Pin")
            annView = MKAnnotationView(annotation: annotation, reuseIdentifier: "Pin")
            
        }
//        if annotation.title! == "aaa" {
//            print("C")
//             annView?.pinTintColor = UIColor.green
//        }
//        if annotation.title! == "bbb" {
//            print("D")
//            annView?.pinTintColor = UIColor.blue
//        }
//
        annView?.image = UIImage(named: "111.png")
        annView?.canShowCallout = true
           return annView
    }
 
    //定位及縮放
    private func centerLocation(location: CLLocation, mapView: MKMapView) {
        let dis:CLLocationDistance = 1000  //以公尺計算
        let cooordRegion = MKCoordinateRegionMakeWithDistance(location.coordinate, dis, dis)
        mapView.setRegion(cooordRegion, animated: true)
    }


}

