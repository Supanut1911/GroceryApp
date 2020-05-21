//
//  HomePresenter.swift
//  GreenGocery
//
//  Created by Supanut Laddayam on 19/5/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import Foundation


protocol HomePresentation {
    func viewDidLoad() -> Void
}

class HomePresenter {
    weak var view: HomeView?
    var interactor: HomeUseCase?
    var router: HomeRouting
    
    init(view: HomeView, interactor: HomeUseCase, router: HomeRouting) {
        self.view = view
        self.interactor = interactor
        self.router = router
         
    }
}

extension HomePresenter: HomePresentation {
   
    func viewDidLoad() {
        DispatchQueue.global(qos: .background).async { [weak self] in
            self?.interactor?.getGroceries(completion:  { (result) in
                let grocerylist = result.groceries.compactMap({GroceryItemViewModel(using: $0)})
                self?.view?.updateGroceries(grocerylist: grocerylist)
            })
        }
        
    }
}

struct GroceryItemViewModel {
    let title: String
    let detail: String
    let image: String
    let price: String
    
    init(using groceryModel: Grocery) {
        title = groceryModel.title
        detail = groceryModel.details
        image = groceryModel.image
        price = "$ \(groceryModel.price)"
    }
}
