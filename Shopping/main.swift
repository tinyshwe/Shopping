//
//  main.swift
//  Shopping
//
//  Created by Shweta Prakash on 2/6/18.
//  Copyright © 2018 Shweta Prakash. All rights reserved.
//

import Foundation

    
    var str: String
    var pr: Double?
    var myCart = ShoppingCart()
    
    
    var formatter = NumberFormatter()
    formatter.locale = NSLocale.current
    formatter.numberStyle = NumberFormatter.Style.currency
    
    repeat{
    print("Enter the  name, price, and quantity of the item")
    
    var name = String(readLine()!)
    pr = Double(readLine()!)
    var qty = Int(readLine()!)
    myCart.addToCart(itemName: name, price: pr!, quantity: qty!)
    print(myCart)
    print("Do you wish to continue (y/n)?")
    str = String(readLine()!)
    }while(str == "y")
    
    print("Please pay \(formatter.string(from: myCart.getTotalPrice() as NSNumber))")
    
    let item: Discountable = Items(itemName: "iPhone X", itemPrice: 999.00, numPurchased: 1);
    if item.discount() > 0.20 {
        print("...");
    }
