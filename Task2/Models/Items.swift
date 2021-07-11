//
//  Items.swift
//  Task2
//
//  Created by Oluwasegun Kolawole Ademola on 10/07/2021.
//

import SwiftUI

struct Item: Identifiable {
    var id = UUID().uuidString
    var title: String
    var price: String
    var rating: String
    var image: String
    var color: String
}


var items = [
Item(title: "Skechers Max", price: "₦24,200", rating: "3.4", image: "p1", color: "p1"),
Item(title: "Skechers GOrun", price: "₦26,000", rating: "3.3", image: "p2",color: "p2"),
Item(title: "Skechers G0340", price: "₦30,400", rating: "4.2", image: "p3",color: "p3"),
Item(title: "Skechers Arch", price: "₦27,000", rating: "3.9", image: "p4",color: "p4"),
Item(title: "Del Array ", price: "₦49,000", rating: "4.5", image: "p5",color: "p5"),
Item(title: "Proven", price: "₦23,000", rating: "4.1", image: "p6",color: "p6")
]
