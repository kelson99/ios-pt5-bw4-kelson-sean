//
//  ReviewRatingChecklistViewController.swift
//  PrivateYelp
//
//  Created by Sean Acres on 8/19/20.
//  Copyright © 2020 Sean Kelson. All rights reserved.
//

import UIKit

class ReviewRatingChecklistViewController: UIViewController {

    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var saveButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var oneStarButton: UIButton!
    @IBOutlet weak var twoStarButton: UIButton!
    @IBOutlet weak var threeStarButton: UIButton!
    @IBOutlet weak var fourStarButton: UIButton!
    @IBOutlet weak var fiveStarButton: UIButton!
    @IBOutlet weak var noKidsButton: UIButton!
    @IBOutlet weak var goodForDatesButton: UIButton!
    @IBOutlet weak var smallSpaceButton: UIButton!
    @IBOutlet weak var dirtyBathroomsButton: UIButton!
    @IBOutlet weak var fineDiningButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setUpViews()
    }
    
    
    private func setUpViews() {
        
        let blurEffect = UIBlurEffect(style: UIBlurEffect.Style.extraLight)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = view.bounds
        blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        view.insertSubview(blurEffectView, at: 0)
        
        // Set up next button shadows
        nextButton.layer.shadowColor = UIColor.black.cgColor
        nextButton.layer.shadowOpacity = 0.25
        nextButton.layer.shadowRadius = 5
        nextButton.layer.shadowOffset = CGSize(width: 0, height: 4)
        nextButton.layer.masksToBounds = false
        
        // Set up save button shadows
        saveButton.layer.shadowColor = UIColor.black.cgColor
        saveButton.layer.shadowOpacity = 0.25
        saveButton.layer.shadowRadius = 5
        saveButton.layer.shadowOffset = CGSize(width: 0, height: 4)
        saveButton.layer.masksToBounds = false
        
        // Set up contentView appearance
        contentView.layer.cornerRadius = 15.0
        contentView.layer.shadowColor = UIColor.black.cgColor
        contentView.layer.shadowOpacity = 0.25
        contentView.layer.shadowRadius = 5
        contentView.layer.shadowOffset = CGSize(width: 0, height: 4)
        contentView.layer.masksToBounds = false
    }
    
    @IBAction func oneStarTapped(_ sender: Any) {
        self.oneStarButton.setImage(UIImage(named: "starButtonSelected"), for: .normal)
        self.twoStarButton.setImage(UIImage(named: "starButtonUnselected"), for: .normal)
        self.threeStarButton.setImage(UIImage(named: "starButtonUnselected"), for: .normal)
        self.fourStarButton.setImage(UIImage(named: "starButtonUnselected"), for: .normal)
        self.fiveStarButton.setImage(UIImage(named: "starButtonUnselected"), for: .normal)
        
    }
    
    @IBAction func twoStarTapped(_ sender: Any) {
        self.oneStarButton.setImage(UIImage(named: "starButtonSelected"), for: .normal)
        self.twoStarButton.setImage(UIImage(named: "starButtonSelected"), for: .normal)
        self.threeStarButton.setImage(UIImage(named: "starButtonUnselected"), for: .normal)
        self.fourStarButton.setImage(UIImage(named: "starButtonUnselected"), for: .normal)
        self.fiveStarButton.setImage(UIImage(named: "starButtonUnselected"), for: .normal)
    }
    
    @IBAction func threeStarTapped(_ sender: Any) {
        self.oneStarButton.setImage(UIImage(named: "starButtonSelected"), for: .normal)
        self.twoStarButton.setImage(UIImage(named: "starButtonSelected"), for: .normal)
        self.threeStarButton.setImage(UIImage(named: "starButtonSelected"), for: .normal)
        self.fourStarButton.setImage(UIImage(named: "starButtonUnselected"), for: .normal)
        self.fiveStarButton.setImage(UIImage(named: "starButtonUnselected"), for: .normal)
    }
    
    @IBAction func fourStarTapped(_ sender: Any) {
        self.oneStarButton.setImage(UIImage(named: "starButtonSelected"), for: .normal)
        self.twoStarButton.setImage(UIImage(named: "starButtonSelected"), for: .normal)
        self.threeStarButton.setImage(UIImage(named: "starButtonSelected"), for: .normal)
        self.fourStarButton.setImage(UIImage(named: "starButtonSelected"), for: .normal)
        self.fiveStarButton.setImage(UIImage(named: "starButtonUnselected"), for: .normal)
    }
    
    @IBAction func fiveStarTapped(_ sender: Any) {
        self.oneStarButton.setImage(UIImage(named: "starButtonSelected"), for: .normal)
        self.twoStarButton.setImage(UIImage(named: "starButtonSelected"), for: .normal)
        self.threeStarButton.setImage(UIImage(named: "starButtonSelected"), for: .normal)
        self.fourStarButton.setImage(UIImage(named: "starButtonSelected"), for: .normal)
        self.fiveStarButton.setImage(UIImage(named: "starButtonSelected"), for: .normal)
    }
    
    @IBAction func noKidsTapped(_ sender: Any) {
    }
    
    @IBAction func goodForDatesTapped(_ sender: Any) {
    }
    
    @IBAction func smallSpaceTapped(_ sender: Any) {
    }
    
    @IBAction func dirtyBathroomsTapped(_ sender: Any) {
    }
    
    @IBAction func fineDiningTapped(_ sender: Any) {
    }
    
    @IBAction func saveButtonTapped(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    @IBAction func nextButtonTapped(_ sender: Any) {
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
