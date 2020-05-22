//
//  GroceryItemCell.swift
//  GreenGocery
//
//  Created by Supanut Laddayam on 21/5/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import UIKit

class GroceryItemCell: UITableViewCell {

    @IBOutlet weak var imageItem: UIImageView!
    
    @IBOutlet weak var cellStackView: UIStackView!
    
    @IBOutlet weak var itemName: UILabel!
    @IBOutlet weak var itemDetail: UILabel!
    @IBOutlet weak var priceItem: UILabel!
    
    lazy var addBagControl: AddBagControlView = {
        let control = AddBagControlView.loadFromNib()
        control.config()
        return control
    }()
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
        self.cellStackView.addArrangedSubview(addBagControl)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func configureX(usingViewModel viewModel: GroceryItemViewModel) -> Void {
//        self.imageView?.image = UIImage(named: viewModel.image)
        self.itemName.text = viewModel.title
        self.itemDetail.text = viewModel.detail
        self.priceItem.text = viewModel.price
    }
    
}
