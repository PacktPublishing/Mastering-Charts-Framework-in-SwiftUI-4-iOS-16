//
//  DevTechieSiteStats.swift
//  MasteringChartsInSwiftUI4
//
//  Created by DevTechie on 9/14/22.
//

import Foundation

struct DevTechieSiteStats: Identifiable {
    var id: String { UUID().uuidString }
    let month: String
    let pageVisits: Double
}

extension DevTechieSiteStats {
    static let data: [DevTechieSiteStats] = [
        .init(month: "Jan", pageVisits: 2500),
        .init(month: "Feb", pageVisits: 2340),
        .init(month: "Mar", pageVisits: 5432),
        .init(month: "Apr", pageVisits: 5643),
        .init(month: "May", pageVisits: 1234),
        .init(month: "Jun", pageVisits: 6467),
        .init(month: "Jul", pageVisits: 8975),
        .init(month: "Aug", pageVisits: 2131),
        .init(month: "Sep", pageVisits: 3424),
        .init(month: "Oct", pageVisits: 5466),
        .init(month: "Nov", pageVisits: 6757),
        .init(month: "Dec", pageVisits: 2322)
    ]
}
