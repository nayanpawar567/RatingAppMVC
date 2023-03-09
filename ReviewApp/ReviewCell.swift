//
//  ReviewCell.swift
//  ReviewApp
//
//  Created by Nayan Pawar on 02/03/23.
//

import UIKit

class ReviewCell: UITableViewCell {

    @IBOutlet weak var imgProfile: UIImageView!
    
    @IBOutlet weak var lblFName: UILabel!
    
    @IBOutlet weak var lblLName: UILabel!
    @IBOutlet weak var lblReview1: UILabel!
    
    @IBOutlet weak var lblRatingID: UILabel!
    @IBOutlet weak var lblRating: UILabel!
    
    @IBOutlet weak var lblDate: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        imgProfile.layer.borderWidth = 1
      
    }



}
