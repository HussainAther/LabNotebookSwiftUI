import SwiftUI

class ExperimentViewModel: ObservableObject {
    @Published var experiments: [Experiment] = []
    
    func addExperiment(title: String, description: String) {
        let newExperiment = Experiment(title: title, date: Date(), description: description)
        experiments.append(newExperiment)
    }
}

