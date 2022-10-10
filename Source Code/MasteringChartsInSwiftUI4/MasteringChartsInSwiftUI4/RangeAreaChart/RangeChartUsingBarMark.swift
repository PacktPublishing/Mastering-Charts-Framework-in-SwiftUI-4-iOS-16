//
//  RangeChartUsingBarMark.swift
//  MasteringChartsInSwiftUI4
//
//  Created by DevTechie on 9/14/22.
//

import Charts
import SwiftUI

struct RangeChartUsingBarMark: View {
    
    @State private var weatherData = Weather.exampleData
    
    var body: some View {
        Chart(weatherData) { weather in
            BarMark(
                x: .value("Date", weather.date),
                yStart: .value("Min Temp", weather.minTemp),
                yEnd: .value("Max Temp", weather.maxTemp)
            )
            .foregroundStyle(.orange.gradient.opacity(0.4))
            
            RectangleMark(
                x: .value("Date", weather.date),
                y: .value("Daily Avg", weather.average)
            )
            .foregroundStyle(.orange.gradient)
            .annotation {
                Text("\(weather.average.formatted())℉")
                    .font(.caption2)
            }
            
            RuleMark(y: .value("Average", Weather.exampleData.map(\.average).reduce(0.0, +) / Double(Weather.exampleData.count)))
                .foregroundStyle(.pink.gradient)
                .lineStyle(StrokeStyle(lineWidth: 3, lineCap: .round, dash: [10]))
                .annotation(position: .top, alignment: .trailing) {
                    Text("Average: \(Weather.exampleData.map(\.average).reduce(0.0, +) / Double(Weather.exampleData.count), format: .number.precision(.fractionLength(0)))℉")
                        .font(.body.bold())
                }
        }
        .frame(height: 400)
        .padding()
    }
}

struct RangeChartUsingBarMark_Previews: PreviewProvider {
    static var previews: some View {
        RangeChartUsingBarMark()
    }
}
