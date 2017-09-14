//
//  BRTNBurrito.swift
//  BurritoTonight
//
//  Created by Doug Suriano on 9/12/17.
//  Copyright © 2017 DougSuriano. All rights reserved.
//

import Foundation
import UIKit

struct BRTNBurrito
{
    let name: String
    let image: UIImage
    let caption: String
}

class BRTNBurritoProvider
{
    class var mockBurritos: [BRTNBurrito]
    {
        return [
            BRTNBurrito(name: "Chicken", image: #imageLiteral(resourceName: "b1"), caption: "Tastes better than it looks"),
            BRTNBurrito(name: "Steak", image: #imageLiteral(resourceName: "b2"), caption: "I want to be your bff."),
            BRTNBurrito(name: "Beef", image: #imageLiteral(resourceName: "b3"), caption: "You look great"),
            BRTNBurrito(name: "Veggie", image: #imageLiteral(resourceName: "b4"), caption: "Healthy"),
            BRTNBurrito(name: "Mega", image: #imageLiteral(resourceName: "b5"), caption: "For if you are extra hungry"),
            BRTNBurrito(name: "Wet", image: #imageLiteral(resourceName: "b6"), caption: "Napkins required."),
            BRTNBurrito(name: "Super Steak", image: #imageLiteral(resourceName: "b7"), caption: "For meat lovers"),
            BRTNBurrito(name: "Super Chicken", image: #imageLiteral(resourceName: "b8"), caption: "For chicken lovers"),
            BRTNBurrito(name: "Breakfast", image: #imageLiteral(resourceName: "b9"), caption: "Good morning"),
            BRTNBurrito(name: "Expensive", image: #imageLiteral(resourceName: "b10"), caption: "Expensive Burrito"),
            BRTNBurrito(name: "Extra Wide", image: #imageLiteral(resourceName: "b11"), caption: "Wide Burrito"),
            BRTNBurrito(name: "Corn Burrito", image: #imageLiteral(resourceName: "b12"), caption: "Corn? I guess."),
            BRTNBurrito(name: "Fake Burrito", image: #imageLiteral(resourceName: "b13"), caption: "This burrito isn't real"),
            BRTNBurrito(name: "The Best Burrito", image: #imageLiteral(resourceName: "b14"), caption: "The best."),
            BRTNBurrito(name: "Shredded Beef", image: #imageLiteral(resourceName: "b15"), caption: "Gotta shred")
        ]
    }
}
