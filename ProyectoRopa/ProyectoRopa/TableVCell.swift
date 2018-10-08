//
//  TableVCell.swift
//  ProyectoRopa
//
//  Created by Laboratorio UNAM-Apple 04 on 05/10/18.
//  Copyright © 2018 Agustin. All rights reserved.
//

import UIKit

class TableVCell: UITableViewCell {

    @IBOutlet weak var Cant: UILabel!
    
    @IBOutlet weak var Pre: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
