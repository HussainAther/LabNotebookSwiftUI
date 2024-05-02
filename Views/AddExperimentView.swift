import SwiftUI

struct AddExperimentView: View {
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var viewModel: ExperimentViewModel
    
    @State private var title = ""
    @State private var description = ""
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("New Experiment")) {
                    TextField("Title", text: $title)
                    TextField("Description", text: $description)
                }
                Button(action: addExperiment) {
                    Text("Add Experiment")
                }
            }
            .navigationTitle("Add Experiment")
            .navigationBarItems(trailing: Button("Cancel") {
                presentationMode.wrappedValue.dismiss()
            })
        }
    }
    
    func addExperiment() {
        viewModel.addExperiment(title: title, description: description)
        presentationMode.wrappedValue.dismiss()
    }
}

