//
//  HomeInteractor.swift
//  GreenGocery
//
//  Created by Supanut Laddayam on 19/5/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import Foundation
import UIKit

protocol HomeUseCase {
    func getGroceries(completion: GroceriesClosure) -> Void
}

class HomeInteractor {
    
    var service: GroceriesAPI
    
    init(service: GroceriesAPI) {
        self.service = service
    }
    
}

extension HomeInteractor: HomeUseCase {
    func getGroceries(completion: (GroceryResult) -> (Void)) {
        self.service.fetchGrocersies { (result) in
            completion(result)
        }
    }
}
