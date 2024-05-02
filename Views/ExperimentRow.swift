import SwiftUI

struct ExperimentRow: View {
    var experiment: Experiment
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(experiment.title)
                .font(.headline)
            Text(experiment.description)
                .font(.subheadline)
                .foregroundColor(.secondary)
        }
    }
}

