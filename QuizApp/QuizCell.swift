//
//  QuizCell.swift
//  QuizApp
//
//  Created by Five on 4/12/21.
//

import UIKit

class QuizCell: UITableViewCell {

    //@IBOutlet weak var titleLabela: UILabel!
    
    
    @IBOutlet weak var cellView: UIView!
    @IBOutlet weak var TitleLabel: UILabel!
    
    
   // @IBOutlet weak var opisLabela: UILabel!
    
   // @IBOutlet weak var tezinaLabela: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
