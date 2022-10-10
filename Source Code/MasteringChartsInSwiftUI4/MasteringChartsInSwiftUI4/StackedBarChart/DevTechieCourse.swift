//
//  DevTechieCourse.swift
//  MasteringChartsInSwiftUI4
//
//  Created by DevTechie on 9/11/22.
//

import Foundation

struct DevTechieCourse: Identifiable {
    let id = UUID()
    let students: Double
    let category: DTCourseCategory
    let source: DTCourseSource
}

extension DevTechieCourse {
    static let data: [DevTechieCourse] = [
            .init(students: 998, category: ._swiftUI, source: .udemy),
            .init(students: 3432, category: .uIKit, source: .udemy),
            .init(students: 1324, category: .machineLearning, source: .udemy),
            .init(students: 1292, category: ._swiftUI, source: .devTechie),
            .init(students: 1342, category: .uIKit, source: .devTechie),
            .init(students: 566, category: .machineLearning, source: .devTechie),
            .init(students: 1233, category: ._swiftUI, source: .youTube),
            .init(students: 805, category: .uIKit, source: .youTube),
            .init(students: 543, category: .machineLearning, source: .youTube),
            .init(students: 900, category: ._swiftUI, source: ._medium),
            .init(students: 570, category: .uIKit, source: ._medium),
            .init(students: 800, category: .machineLearning, source: ._medium),
        ]
}
