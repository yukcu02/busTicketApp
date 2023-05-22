//
//  OnboardingCollectionViewCell.swift
//  BiletYolcuOdev
//
//  Created by Furkan Yükcü on 3.04.2023.
//

import UIKit

class OnboardingCollectionViewCell: UICollectionViewCell {
    static let İdentifier = String(describing: OnboardingCollectionViewCell.self)
    @IBOutlet weak var slideImageView: UIImageView!
    
    @IBOutlet weak var slideTitleLbl: UILabel!
    
    @IBOutlet weak var slideDescriptionLbl: UILabel!
    
    func setup (_ slide: OnboardingSlide) {
        slideImageView.image = slide.image
        slideTitleLbl.text = slide.title
        slideDescriptionLbl.text = slide.description
    }
}
