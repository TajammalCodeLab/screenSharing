import SwiftUI

struct MainView: View {
    @StateObject private var viewModel = CallViewModel()

    var body: some View {
        VStack {
            if viewModel.isScreenSharing {
                Text("Screen Sharing is Active")
                    .font(.largeTitle)
            } else {
                Text("Not Sharing Screen")
                    .font(.largeTitle)
            }

            Button(action: {
                Task {
                    if viewModel.call == nil {
                        await viewModel.startCall()
                    }
                    await viewModel.startScreenSharing()
                }
            }) {
                Text("Start Screen Sharing")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            .padding()

            Button(action: {
                Task {
                    await viewModel.stopScreenSharing()
                }
            }) {
                Text("Stop Screen Sharing")
                    .padding()
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            .padding()
        }
        .onAppear {
            Task {
                await viewModel.startCall()
            }
        }
    }
}
