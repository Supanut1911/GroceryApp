//
//  StubService.swift
//  GreenGocery
//
//  Created by Supanut Laddayam on 21/5/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import Foundation


typealias GroceriesClosure = (GroceryResult) -> (Void)
protocol GroceriesAPI {
    func fetchGrocersies(completion: GroceriesClosure) -> ()
    
    
}

class StubService {
    static let shared: StubService = StubService()
    private init () {}
    
}

extension StubService: GroceriesAPI {
    
    func fetchGrocersies(completion: GroceriesClosure) {
        
        if let url = Bundle.main.url(forResource: "item", withExtension: ".json") {
            do {
                guard let data = try? Data(contentsOf: url) else { return  }
                let groceryResult = try JSONDecoder().decode(GroceryResult.self, from: data)
                completion(groceryResult)
                
            } catch {
                print("Some thing go error: \(error)")
            }
        }
    }
}


