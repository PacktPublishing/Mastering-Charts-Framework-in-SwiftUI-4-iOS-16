//
//  Food.swift
//  MasteringChartsInSwiftUI4
//
//  Created by DevTechie on 9/14/22.
//

import Foundation

struct Food: Identifiable {
    let id = UUID()
    let name: String
    let price: Double
    let date: Date
    
    init(name: String, price: Double, year: Int) {
        self.name = name
        self.price = price
        let calendar = Calendar.autoupdatingCurrent
        self.date = calendar.date(from: DateComponents(year: year))!
    }
}

extension Food {
    static var data = [
        Food(name: "Samosa", price: 0.15, year: 1980),
        Food(name: "Samosa", price: 0.25, year: 1990),
        Food(name: "Samosa", price: 1.10, year: 2000),
        Food(name: "Samosa", price: 2.50, year: 2010),
        Food(name: "Samosa", price: 5.00, year: 2020),
        Food(name: "Dosa", price: 1.15, year: 1980),
        Food(name: "Dosa", price: 5.50, year: 1990),
        Food(name: "Dosa", price: 8.50, year: 2000),
        Food(name: "Dosa", price: 10.50, year: 2010),
        Food(name: "Dosa", price: 15.00, year: 2020),
        Food(name: "Gulab Jamun", price: 0.25, year: 1980),
        Food(name: "Gulab Jamun", price: 0.50, year: 1990),
        Food(name: "Gulab Jamun", price: 1.50, year: 2000),
        Food(name: "Gulab Jamun", price: 2.50, year: 2010),
        Food(name: "Gulab Jamun", price: 5.00, year: 2020)
    ]
}
