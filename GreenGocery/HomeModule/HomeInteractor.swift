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
    func getTitle() -> HomeModel
}

class HomeInteractor {
    
}

extension HomeInteractor: HomeUseCase {
    func getTitle() -> HomeModel {
        return HomeModel(title: "Home VIPER")
    }
    
    
}
