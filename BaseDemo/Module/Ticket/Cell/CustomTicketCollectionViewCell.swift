//
//  CustomTicketCollectionViewCell.swift
//  BaseDemo
//
//  Created by BASEBS on 8/20/20.
//  Copyright © 2020 BASEBS. All rights reserved.
//

import UIKit

class CustomTicketCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var lblName : UILabel!
    @IBOutlet weak var lblStatus : UILabel!
    @IBOutlet weak var lblID : UILabel!
    
    @IBOutlet weak var vBound : UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        vBound.layer.cornerRadius = 8.0
    }
    
    

}
