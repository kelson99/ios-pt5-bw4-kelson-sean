//
//  MyReviewsViewController.swift
//  PrivateYelp
//
//  Created by Sean Acres on 8/20/20.
//  Copyright © 2020 Sean Kelson. All rights reserved.
//

import UIKit

class MyReviewsViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var mapButton: UIButton!
    @IBOutlet weak var myReviewsButton: UIButton!
    @IBOutlet weak var searchContainer: UIView!
    @IBOutlet weak var searchTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
    }
    
    private func setUpViews() {
        let nib = UINib(nibName: "ReviewTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "ReviewCell")
        
        searchContainer.layer.cornerRadius = 10.0
        
        //Set up shadows
        searchContainer.layer.shadowColor = UIColor.black.cgColor
        searchContainer.layer.shadowOpacity = 0.25
        searchContainer.layer.shadowRadius = 5
        searchContainer.layer.shadowOffset = CGSize(width: 0, height: 4)
        searchContainer.layer.masksToBounds = false
        
        mapButton.layer.shadowColor = UIColor.black.cgColor
        mapButton.layer.shadowOpacity = 0.25
        mapButton.layer.shadowRadius = 5
        mapButton.layer.shadowOffset = CGSize(width: 0, height: 4)
        mapButton.layer.masksToBounds = false
        
        mapButton.layer.shadowColor = UIColor.black.cgColor
        mapButton.layer.shadowOpacity = 0.25
        mapButton.layer.shadowRadius = 5
        mapButton.layer.shadowOffset = CGSize(width: 0, height: 4)
        mapButton.layer.masksToBounds = false
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

extension MyReviewsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Fetched results controller here TODO
        
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ReviewCell", for: indexPath) as? ReviewTableViewCell else { return UITableViewCell() }
        
        // Set cell's review here TODO
        
        return cell
    }
    
    
}

extension MyReviewsViewController: UITableViewDelegate {
    
}
