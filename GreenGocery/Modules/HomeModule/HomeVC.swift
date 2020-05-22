//
//  ViewController.swift
//  GreenGocery
//
//  Created by Supanut Laddayam on 19/5/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import UIKit

protocol HomeView: class{
    func updateGroceries(grocerylist: [GroceryItemViewModel])
    
}

class HomeVC: UIViewController {
    
    //lazy var addBagControl: AddBagControlView = {
      //  let control = AddBagControlView.loadFromNib()
    //    control.config()
  //      return control
//}()
    
    @IBOutlet weak var containerStackView: UIStackView!
    @IBOutlet weak var tableView: UITableView!
    
    private static let groceryCellID = "groceryCellID"
    
    var presenter: HomePresentation?
    
    var datasource: [GroceryItemViewModel] = [] {
        didSet {
            DispatchQueue.main.async {
                   self.tableView.reloadData()
            }
         
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.presenter?.viewDidLoad()
//        self.tableView.register(UINib(nibName: "GroceryItemCell", bundle: nil), forCellReuseIdentifier: HomeVC.groceryCellID)
        let nib = UINib(nibName: "GroceryItemCell", bundle: nil)
        self.tableView.register(nib, forCellReuseIdentifier: HomeVC.groceryCellID)
        self.tableView.dataSource = self
        self.tableView.delegate = self
        
//        self.containerStackView.addArrangedSubview(addBagControl)
    }


}

extension HomeVC: HomeView{
    func updateGroceries(grocerylist: ([GroceryItemViewModel])) {
        print("Grocery list: \(grocerylist)")
        self.datasource = grocerylist

    }
    
    
}

extension HomeVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datasource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let viewModel = datasource[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: HomeVC.groceryCellID, for: indexPath) as! GroceryItemCell
        cell.configureX(usingViewModel: viewModel)
        return cell
    }
    
    
}

extension HomeVC: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
}



