//
//  Items.swift
//  Shopping
//
//  Created by Shweta Prakash on 2/6/18.
//  Copyright © 2018 Shweta Prakash. All rights reserved.
//

import Foundation

class Items: Discountable, CustomStringConvertible{
    
    private var name: String
    private var price: Double
    private var quantity: Int

    init(itemName: String, itemPrice: Double, numPurchased: Int){
        
        self.name = itemName
        self.price = itemPrice
        self.quantity = numPurchased
    }
    
    func getName()-> String{
        return self.name
    }
    
   
    func getPrice()-> Double{
        return self.price
    }
    
    
    func getQuantity()->Int{
        return self.quantity
    }
    
    var description: String {
        let formatter = NumberFormatter()
        formatter.locale = NSLocale.current
        formatter.numberStyle = NumberFormatter.Style.currency
        let pr = formatter.string(from: NSNumber(value: price))!
        let qty = formatter.string(from: NSNumber(value: price * Double(quantity)))!
        return ("\(name) \t \(pr)  \(quantity) \t \(qty)" )
    }
    func discount()-> Double{
        return 0.1
    }
    
    
}

extension Items: Comparable{
    
    static func <(lhs:Items, rhs: Items)-> Bool{
        if lhs.price < rhs.price{
            return true
        }
        else{
            return false
        }
    }
    static func ==(lhs: Items, rhs: Items) -> Bool {
        if lhs.price == rhs.price{
            return true
        }
        else{
            return false
        }
    }
    static func >(lhs: Items, rhs: Items) -> Bool {
        if lhs.price > rhs.price{
            return true
        }
        else{
            return false
        }
    }
    
    
}



