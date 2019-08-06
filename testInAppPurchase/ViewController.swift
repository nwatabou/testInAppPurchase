//
//  ViewController.swift
//  testInAppPurchase
//
//  Created by nancy on 2019/07/16.
//  Copyright © 2019 nwatabou. All rights reserved.
//

import UIKit
import SwiftyStoreKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        SwiftyStoreKit.retrieveProductsInfo(["testA_600fight"], completion: { result in
            guard let products = result.retrievedProducts.first else {
                return
            }
            print(products.discounts)
            print(products.price)
            print(products.localizedDescription)
        })
    }


}

