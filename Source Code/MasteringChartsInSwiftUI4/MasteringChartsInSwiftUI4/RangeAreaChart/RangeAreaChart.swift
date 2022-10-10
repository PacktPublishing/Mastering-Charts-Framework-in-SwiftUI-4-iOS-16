//
//  RangeAreaChart.swift
//  MasteringChartsInSwiftUI4
//
//  Created by DevTechie on 9/14/22.
//

import Charts
import SwiftUI

struct RangeAreaChart: View {
    
    @State private var weatherData = Weather.exampleData
    
    var body: some View {
        VStack {
            Text("SF Weather Pattern")
                .font(.largeTitle)
            
            Chart(weatherData) { weather in
                AreaMark(
                    x: .value("Date", weather.date),
                    yStart: .value("Min Temp", weather.minTemp),
                    yEnd: .value("Max Temp", weather.maxTemp)
                )
                .interpolationMethod(.catmullRom)
                .foregroundStyle(.orange.gradient.opacity(0.4))
                
                PointMark(x: .value("Date", weather.date), y: .value("Daily Avg", weather.average))
                    .annotation {
                        Text("\(weather.average.formatted())℉")
                            .font(.caption)
                    }
            }
        }
        .padding()
    }
}

struct RangeAreaChart_Previews: PreviewProvider {
    static var previews: some View {
        RangeAreaChart()
    }
}
