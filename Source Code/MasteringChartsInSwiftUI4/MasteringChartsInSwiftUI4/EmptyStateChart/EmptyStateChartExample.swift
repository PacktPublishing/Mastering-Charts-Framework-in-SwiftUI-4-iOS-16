//
//  EmptyStateChartExample.swift
//  MasteringChartsInSwiftUI4
//
//  Created by DevTechie on 9/14/22.
//

import Charts
import SwiftUI

struct EmptyStateChartExample: View {
    
    @State private var data = DevTechieSiteStats.data
    @State private var showEmptyState = false
    
    var body: some View {
        VStack {
            Text("DevTechie.com Stats")
            Chart {
                if showEmptyState {
                    RuleMark(y: .value("No Visits", 0))
                        .annotation {
                            Text("No page visit was recorded during this period.")
                                .font(.footnote)
                                .padding(10)
                        }
                } else {
                    ForEach(data) { datum in
                        LineMark(x: .value("Month", datum.month), y: .value("Page Visits", datum.pageVisits))
                            .foregroundStyle(.indigo.gradient)
                            .interpolationMethod(.catmullRom)
                            .symbol(.asterisk)
                        
                        AreaMark(x: .value("Month", datum.month), y: .value("Page Visits", datum.pageVisits))
                            .foregroundStyle(.linearGradient(colors: [.indigo, .clear], startPoint: .top, endPoint: .bottom))
                            .interpolationMethod(.catmullRom)
                    }
                }
            }
            .chartYAxis(showEmptyState ? .hidden : .visible)
            .frame(height: 400)
            .animation(.easeInOut, value: showEmptyState)
            
            
            Toggle("Show Empty State", isOn: $showEmptyState)
        }
        .padding()
    }
}

struct EmptyStateChartExample_Previews: PreviewProvider {
    static var previews: some View {
        EmptyStateChartExample()
    }
}
