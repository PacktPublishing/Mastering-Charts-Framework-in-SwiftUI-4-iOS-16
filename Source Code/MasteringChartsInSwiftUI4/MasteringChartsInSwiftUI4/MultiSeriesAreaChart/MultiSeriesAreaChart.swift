//
//  MultiSeriesAreaChart.swift
//  MasteringChartsInSwiftUI4
//
//  Created by DevTechie on 9/14/22.
//

import Charts
import SwiftUI

struct MultiSeriesAreaChart: View {
    var body: some View {
        VStack {
            Text("DevTechie")
                .font(.largeTitle)
            Text("Food prices over years")
                .font(.subheadline)
                .foregroundColor(.secondary)
            
            Chart(Food.data) {
                AreaMark(
                    x: .value("Date", $0.date),
                    y: .value("Price", $0.price)
                )
                .foregroundStyle(by: .value("Food Item", $0.name))
                .interpolationMethod(.cardinal)
            }
            .frame(height: 400)
        }
        .padding()
    }
}

struct MultiSeriesAreaChart_Previews: PreviewProvider {
    static var previews: some View {
        MultiSeriesAreaChart()
    }
}
