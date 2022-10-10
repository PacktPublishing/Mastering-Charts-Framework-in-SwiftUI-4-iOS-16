//
//  CandleStickChart.swift
//  MasteringChartsInSwiftUI4
//
//  Created by DevTechie on 9/14/22.
//

import Charts
import SwiftUI

struct CandleStickChart: View {
    var body: some View {
        VStack {
            Text("Stock prices for Company")
                .font(.largeTitle)
            Chart {
                ForEach(Stock.exampleData) { stock in
                    RectangleMark(
                        x: .value("Date", stock.date),
                        yStart: .value("Low", stock.lowPrice),
                        yEnd: .value("High", stock.highPrice),
                        width: 3
                    )
                    
                    RectangleMark(
                        x: .value("Date", stock.date),
                        yStart: .value("Open", stock.openPrice),
                        yEnd: .value("Close", stock.closePrice),
                        width: 10
                    )
                    .foregroundStyle(Color.orange.gradient)
                }
            }
            .frame(height: 400)
        }
        .padding()
    }
}

struct CandleStickChart_Previews: PreviewProvider {
    static var previews: some View {
        CandleStickChart()
    }
}
