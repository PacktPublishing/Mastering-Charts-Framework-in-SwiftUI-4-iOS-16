//
//  Stock.swift
//  MasteringChartsInSwiftUI4
//
//  Created by DevTechie on 9/14/22.
//

import Foundation

struct Stock: Identifiable {
    var id = UUID()
    var name: String
    var date: String
    var openPrice: Double
    var highPrice: Double
    var lowPrice: Double
    var closePrice: Double
}

extension Stock {
    static var exampleData: [Stock] {
        [
            .init(name: "Company",
                  date: "Jun 17",
                  openPrice: 130.07,
                  highPrice: 143.08,
                  lowPrice: 119.81,
                  closePrice: 121.56),
            .init(name: "Company",
                  date: "Jun 16",
                  openPrice: 95.07,
                  highPrice: 113.08,
                  lowPrice: 79.81,
                  closePrice: 99.56),
            .init(name: "Company",
                  date: "Jun 15",
                  openPrice: 70.07,
                  highPrice: 123.08,
                  lowPrice: 59.81,
                  closePrice: 75.56),
            .init(name: "Company",
                  date: "Jun 14",
                  openPrice: 130.07,
                  highPrice: 163.08,
                  lowPrice: 119.81,
                  closePrice: 141.56),
            .init(name: "Company",
                  date: "Jun 13",
                  openPrice: 109.07,
                  highPrice: 163.08,
                  lowPrice: 100.81,
                  closePrice: 121.56)
        ]
    }
}
