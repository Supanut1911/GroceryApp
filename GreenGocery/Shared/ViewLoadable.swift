//
//  ViewLoadable.swift
//  GreenGocery
//
//  Created by Supanut Laddayam on 21/5/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import Foundation
import UIKit

public protocol ViewLoadable: AnyObject {
    static var nibName: String {get}
}

public extension ViewLoadable {
    static func loadFromNib() -> Self {
        return loadFromNib(from: Bundle.init(for: self))
    }
    
    static func loadFromNib(from bundle: Bundle) -> Self {
        return bundle.loadNibNamed(self.nibName, owner: nil, options: nil)?.first as! Self
    }
    
    
    
}



