//
//  ItemHadTableViewCell.swift
//  PrivateYelp
//
//  Created by Sean Acres on 8/21/20.
//  Copyright © 2020 Sean Kelson. All rights reserved.
//

import UIKit

protocol ItemHadTableViewCellDelegate: class {
    func oneStarWasTapped(on cell: ItemHadTableViewCell)
    func twoStarWasTapped(on cell: ItemHadTableViewCell)
    func threeStarWasTapped(on cell: ItemHadTableViewCell)
    func fourStarWasTapped(on cell: ItemHadTableViewCell)
    func fiveStarWasTapped(on cell: ItemHadTableViewCell)
}

class ItemHadTableViewCell: UITableViewCell {
    
    @IBOutlet weak var itemNameLabel: UILabel!
    @IBOutlet weak var oneStarButton: UIButton!
    @IBOutlet weak var twoStarButton: UIButton!
    @IBOutlet weak var threeStarButton: UIButton!
    @IBOutlet weak var fourStarButton: UIButton!
    @IBOutlet weak var fiveStarButton: UIButton!
    
    weak var delegate: ItemHadTableViewCellDelegate?
    var itemHad: String? {
        didSet {
            updateViews()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    private func updateViews() {
        guard let itemHad = itemHad else { return }
        itemNameLabel.text = itemHad
    }
    
    @IBAction func oneStarTapped(_ sender: Any) {
    }
    
    @IBAction func twoStarTapped(_ sender: Any) {
    }
    
    @IBAction func threeStarTapped(_ sender: Any) {
    }
    
    @IBAction func fourStarTapped(_ sender: Any) {
    }
    
    @IBAction func fiveStarTapped(_ sender: Any) {
    }
}
