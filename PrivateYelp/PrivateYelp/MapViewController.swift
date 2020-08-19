//
//  MapViewController.swift
//  PrivateYelp
//
//  Created by Sean Acres on 8/19/20.
//  Copyright © 2020 Sean Kelson. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var myReviewsButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setUpViews()
    }
    
    private func setUpViews() {
        myReviewsButton.layer.shadowColor = UIColor.black.cgColor
        myReviewsButton.layer.shadowOpacity = 0.25
        myReviewsButton.layer.shadowRadius = 5
        myReviewsButton.layer.shadowOffset = CGSize(width: 0, height: 4)
        myReviewsButton.layer.masksToBounds = false
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
