//
//  TicketCell.swift
//  BiletYolcuOdev
//
//  Created by Furkan Yükcü on 9.04.2023.
//

import UIKit

class TicketCell: UITableViewCell {
        @IBOutlet weak var busImg: UIImageView!
        @IBOutlet weak var timePicker: UILabel!
        @IBOutlet weak var datePicker: UILabel!
//        @IBOutlet weak var priceLabel: UILabel!
        @IBOutlet weak var fromDestinationLabel: UILabel!
        @IBOutlet weak var toDestinationLabel: UILabel!
    
        override func awakeFromNib() {
            super.awakeFromNib()
            // Initialization code
        }
        
        override func setSelected(_ selected: Bool, animated: Bool) {
            super.setSelected(selected, animated: animated)
            
            // Configure the view for the selected state
        }
        
        
        
        func configure(model: ticketModel) {
//            self.busImg.image = UIImage(named: model.ticketlModel!.image!)
//            self.timePicker.text = model.ticketModel!.time!
//            self.priceLabel.text = model.ticketModel!.price!
//            self.travelTimeLabel.text = model.ticketModel!.travelTime!
            self.fromDestinationLabel.text = model.fromDestinationLabel
            self.toDestinationLabel.text = model.toDestinationLabel
            self.datePicker.text = model.datePicker
        }
    }
