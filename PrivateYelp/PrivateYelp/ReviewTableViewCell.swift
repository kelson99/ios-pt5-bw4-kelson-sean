//
//  ReviewTableViewCell.swift
//  PrivateYelp
//
//  Created by Sean Acres on 8/20/20.
//  Copyright © 2020 Sean Kelson. All rights reserved.
//

import UIKit

class ReviewTableViewCell: UITableViewCell {
    
    var review: Review? {
        didSet {
            updateViews()
        }
    }


    @IBOutlet weak var cellView: UIView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var ratingLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        updateViews()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    private func updateViews() {
        guard let review = review else { return }
        nameLabel.text = review.restaurant?.name
        addressLabel.text = review.restaurant?.address
        ratingLabel.text = "\(review.overallRating)"
        
        // Set up rounded cell
        cellView.layer.cornerRadius = 15.0
        
        //Set up cell shadows
        cellView.layer.shadowColor = UIColor.black.cgColor
        cellView.layer.shadowOpacity = 0.25
        cellView.layer.shadowRadius = 5
        cellView.layer.shadowOffset = CGSize(width: 0, height: 4)
        cellView.layer.masksToBounds = false
    }
    
}
