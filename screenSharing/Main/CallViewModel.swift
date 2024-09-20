import SwiftUI
import StreamVideo

class CallViewModel: ObservableObject {
    @Published var isScreenSharing = false
    var call: Call?
    

    func startCall() async {
        
        do {
            try await call?.join()
            print("Joined the call")
        } catch {
            print("Error joining the call: \(error)")
        }
    }

    func startScreenSharing() async {
        guard let call = call else { return }

        do {
            try await call.startScreensharing(type: .inApp)
            isScreenSharing = true
            print("Started screen sharing")
        } catch {
            print("Error starting screen sharing: \(error)")
        }
    }

    func stopScreenSharing() async {
        guard let call = call else { return }

        do {
            try await call.stopScreensharing()
            isScreenSharing = false
            print("Stopped screen sharing")
        } catch {
            print("Error stopping screen sharing: \(error)")
        }
    }
}
