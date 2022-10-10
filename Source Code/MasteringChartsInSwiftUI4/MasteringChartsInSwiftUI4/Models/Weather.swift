//
//  Weather.swift
//  MasteringChartsInSwiftUI4
//
//  Created by DevTechie on 9/14/22.
//

import Foundation

struct Weather: Identifiable {
    let id = UUID()
    let date: String
    let maxTemp: Double
    let minTemp: Double
    var average: Double {
        (minTemp + maxTemp) / 2
    }
}

extension Weather {
    static var exampleData: [Weather] = [
        .init(date: "Jan", maxTemp: 74, minTemp: 56),
        .init(date: "Feb", maxTemp: 76, minTemp: 52),
        .init(date: "Mar", maxTemp: 80, minTemp: 54),
        .init(date: "Apr", maxTemp: 83, minTemp: 55),
        .init(date: "May", maxTemp: 83, minTemp: 58),
        .init(date: "Jun", maxTemp: 84, minTemp: 64),
        .init(date: "Jul", maxTemp: 88, minTemp: 62),
        .init(date: "Aug", maxTemp: 77, minTemp: 60),
        .init(date: "Sep", maxTemp: 87, minTemp: 62),
        .init(date: "Oct", maxTemp: 85, minTemp: 61),
        .init(date: "Nov", maxTemp: 69, minTemp: 60),
        .init(date: "Dec", maxTemp: 67, minTemp: 54),
    ]
}
