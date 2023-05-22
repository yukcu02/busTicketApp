//
//  OnboardingCollectionViewCell.swift
//  BiletYolcuOdev
//
//  Created by Ahmet Akgün on 3.04.2023.
//

import UIKit

class OnboardingCollectionViewCell: UICollectionViewCell {
    static let İdentifier = String(describing: OnboardingCollectionViewCell.self)
    
    
    
    func setup (_ slide: OnboardingSlide) {
        slideImageView.image = slide.image
        slideTitleLbl.text = slide.title
        slideDescriptionLbl.text = slide.description
    }
    
}
