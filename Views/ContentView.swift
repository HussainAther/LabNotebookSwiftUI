import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ExperimentViewModel()
    @State private var showingAddExperiment = false
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(viewModel.experiments) { experiment in
                        NavigationLink(destination: ExperimentRow(experiment: experiment)) {
                            ExperimentRow(experiment: experiment)
                        }
                    }
                }
                .navigationTitle("Lab Notebook")
                .navigationBarItems(trailing: Button(action: {
                    showingAddExperiment.toggle()
                }) {
                    Image(systemName: "plus")
                })
            }
            .sheet(isPresented: $showingAddExperiment) {
                AddExperimentView(viewModel: viewModel)
            }
        }
    }
}

