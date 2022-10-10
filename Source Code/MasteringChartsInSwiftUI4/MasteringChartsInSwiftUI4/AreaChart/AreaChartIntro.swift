//
//  AreaChartIntro.swift
//  MasteringChartsInSwiftUI4
//
//  Created by DevTechie on 9/13/22.
//

import Charts
import SwiftUI

struct AreaChartIntro: View {
    @State private var runData = Workout.runWorkouts
    
    var body: some View {
        VStack {
            Text("DevTechie")
                .font(.largeTitle)
            Chart(runData) { workout in
                AreaMark(
                    x: .value("Day", workout.day),
                    y: .value("Mins", workout.minutes))
                .interpolationMethod(.stepCenter)
            }
            .frame(height: 400)
        }
        .padding()
    }
}

struct AreaChartIntro_Previews: PreviewProvider {
    static var previews: some View {
        AreaChartIntro()
    }
}
