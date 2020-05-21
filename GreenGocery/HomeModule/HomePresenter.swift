//
//  HomePresenter.swift
//  GreenGocery
//
//  Created by Supanut Laddayam on 19/5/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import Foundation


protocol HomePresentation {
    func viewDidLoad()
}

class HomePresenter {
    weak var view: HomeView?
    var interactor: HomeUseCase
    var router: HomeRouting
    
    init(view: HomeView, interactor: HomeUseCase, router: HomeRouting) {
        self.view = view
        self.interactor = interactor
        self.router = router
         
    }
}

extension HomePresenter: HomePresentation {
    func viewDidLoad() {
        let homeModel = self.interactor.getTitle()
        print("Home model value is \(homeModel)")
        DispatchQueue.main.async { [weak self] in
            guard let this = self else {return}
            this.view?.updateTitle(title: homeModel.title)
        }
        
    }
    
}
