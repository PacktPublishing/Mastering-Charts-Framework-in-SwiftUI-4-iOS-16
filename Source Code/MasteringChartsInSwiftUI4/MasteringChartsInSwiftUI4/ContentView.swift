//
//  ContentView.swift
//  MasteringChartsInSwiftUI4
//
//  Created by DevTechie on 9/9/22.
//

import SwiftUI

enum AllViews: String, CaseIterable, Identifiable {
    
    var id: String {
        UUID().uuidString
    }
    
    case chartsIntro = "Charts Introduction"
    case horiozntalBarChartExample = "Horiozntal Bar Chart"
    case dynamicChartExample = "Dynamic Chart"
    case chartForegroundStyleExample = "Chart ForegroundStyle"
    case chartForegroundStyleScaleExample = "Chart ForegroundStyle Scale"
    case annotationsExample = "Chart Annotations"
    case annotationCustomViewExample = "Chart Annotation Custom View"
    case stackedBarChartExample = "StackedBar Chart"
    case multiSeriesBarChartExample = "Multi-Series Bar Chart"
    case lineChartExample = "Line Chart"
    case stylingLineChart = "Styling Line Chart"
    case lineInterpolation = "Line Chart Interpolation"
    case lineChartAnnotation = "Line Chart Annotation"
    case lineChartSymbol = "Line Chart Symbol"
    case multiSeriesLineChart = "Multi-Series Line Chart"
    case multiSeriesLineChartStyling = "Multi-Series Line Chart Styling"
    case areaChartIntro = "Area Chart Introduction"
    case multiSeriesAreaChart = "Multi Series Area Chart"
    case candleStickChart = "Candle Stick Chart"
    case combinedChart = "Combined Chart"
    case rangeAreaChart = "Range Area Chart"
    case rangeChartUsingBarMark = "Range Chart Using BarMark"
    case legendCustomization = "Chart Legend Customization"
    case chartPlotStyleCustomization = "Chart Plot Style Customization"
    case chartAxisCustomization = "Chart Axis Customization"
    case emptyStateChartExample = "Empty State Chart"
}

struct ContentView: View {
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(AllViews.allCases) { view in
                    NavigationLink(view.rawValue, value: view)
                }
            }
            .navigationDestination(for: AllViews.self, destination: { value in
                switch value {
                case .chartsIntro:
                    ChartsIntro()
                case .horiozntalBarChartExample:
                    HoriozntalBarChartExample()
                case .dynamicChartExample:
                    DynamicChartExample()
                case .chartForegroundStyleExample:
                    ChartForegroundStyleExample()
                case .chartForegroundStyleScaleExample:
                    ChartForegroundStyleScaleExample()
                case .annotationsExample:
                    AnnotationsExample()
                case .annotationCustomViewExample:
                    AnnotationCustomViewExample()
                case .stackedBarChartExample:
                    StackedBarChartExample()
                case .multiSeriesBarChartExample:
                    MultiSeriesBarChartExample()
                case .lineChartExample:
                    LineChartExample()
                case .stylingLineChart:
                    StylingLineChart()
                case .lineInterpolation:
                    LineInterpolation()
                case .lineChartAnnotation:
                    LineChartAnnotation()
                case .lineChartSymbol:
                    LineChartSymbol()
                case .multiSeriesLineChart:
                    MultiSeriesLineChart()
                case .multiSeriesLineChartStyling:
                    MultiSeriesLineChartStyling()
                case .areaChartIntro:
                    AreaChartIntro()
                case .multiSeriesAreaChart:
                    MultiSeriesAreaChart()
                case .candleStickChart:
                    CandleStickChart()
                case .combinedChart:
                    CombinedChart()
                case .rangeAreaChart:
                    RangeAreaChart()
                case .rangeChartUsingBarMark:
                    RangeChartUsingBarMark()
                case .legendCustomization:
                    LegendCustomization()
                case .chartPlotStyleCustomization:
                    ChartPlotStyleCustomization()
                case .chartAxisCustomization:
                    ChartAxisCustomization()
                case .emptyStateChartExample:
                    EmptyStateChartExample()
                }
            })
            .navigationTitle("DevTechie.com")
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
