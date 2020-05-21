//
//  ViewController.swift
//  GreenGocery
//
//  Created by Supanut Laddayam on 19/5/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import UIKit

protocol HomeView: class{
    func updateTitle(title: String)
}

class HomeVC: UIViewController {
    
    @IBOutlet weak var helloLabel: UILabel!
    
    var presenter: HomePresentation!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.presenter.viewDidLoad()
    }


}

extension HomeVC: HomeView{
    func updateTitle(title: String) {
        self.helloLabel.text = title
    }
    
    
}

