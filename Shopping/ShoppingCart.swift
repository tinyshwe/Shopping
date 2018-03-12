//
//  ShoppingCart.swift
//  Shopping
//
//  Created by Shweta Prakash on 2/6/18.
//  Copyright © 2018 Shweta Prakash. All rights reserved.
//

import Foundation

class ShoppingCart:CustomStringConvertible{
   
private var itemCount: Int
private var totalPrice: Double
//private var capacity: Int
private  var cart: [Items]

init(){
    //capacity = 3
    itemCount = 0
    totalPrice = 0.0
    cart = []
    }
    func addToCart(itemName: String, price: Double,quantity: Int ) -> Void {
        
        cart.append(Items(itemName: itemName, itemPrice: price, numPurchased: quantity))
        totalPrice += price * Double(quantity)
        //if itemCount == capacity {
            //increaseSize();
        //}
        itemCount+=1
    }
    var description: String {
        cart.sort()
        let formatter = NumberFormatter()
        //formatter.locale = NSLocale.current
        formatter.numberStyle = NumberFormatter.Style.currency
        var contents = "\nShopping Cart\n"
        contents += "\nItem\tPrice\tQty\tTotal\n"
        
        for i in 0..<itemCount{
            
        contents += "\(cart[i]) \t\n"
        
        }
        var tp = formatter.string(from: totalPrice as NSNumber)!
        contents += "\nTotal Price: \(tp)))"
        contents += "\n";
        return contents;
    
    }
   
    public func getTotalPrice()-> Double{
        return totalPrice
    }
      
}

