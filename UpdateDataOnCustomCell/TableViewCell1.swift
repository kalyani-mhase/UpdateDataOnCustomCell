//
//  TableViewCell1.swift
//  UpdateDataOnCustomCell
//
//  Created by Mac on 06/10/21.
//

import UIKit

class TableViewCell1: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    
    weak var delegate : TableViewProtocol?
    var iPath : IndexPath?
    
    
    
    @IBAction func buttonAction(_ sender: Any) {
        
        delegate?.buttonTapped(nameLabel.text,ageLabel.text,iPath)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
