//
//  MapViewController.swift
//  Ambulance
//
//  Created by Vandana Mittal on 10/13/19.
//  Copyright © 2019 Rohan Mittal. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    @IBAction func showMeWhere(_ sender: UIButton) {
                
                let lattitude:CLLocationDegrees = 12.925730
                let longitude:CLLocationDegrees = 79.137147
                
                let regionDistance:CLLocationDistance = 1000
                let coordinates = CLLocationCoordinate2DMake(lattitude, longitude)
                let regionSpan = MKCoordinateRegion(center: coordinates, latitudinalMeters: regionDistance, longitudinalMeters: regionDistance)
                
                let options = [MKLaunchOptionsMapCenterKey: NSValue(mkCoordinate: regionSpan.center), MKLaunchOptionsMapSpanKey: NSValue(mkCoordinateSpan: regionSpan.span)]
                
                let placemark = MKPlacemark(coordinate: coordinates)
                let mapItem = MKMapItem(placemark: placemark)
                mapItem.name = "CMC Hospital"
                mapItem.openInMaps(launchOptions: options)
                
            }
            
    
        
    }
    

