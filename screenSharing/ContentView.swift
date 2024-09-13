//
//  ContentView.swift
//  screenSharing
//
//  Created by SID on 12/09/2024.
//
import StreamVideo
import StreamVideoSwiftUI
import SwiftUI

struct ContentView: View {
    
    @Injected(\.streamVideo) var streamVideo
    
    @StateObject var callViewModel = CallViewModel()
    @State var callId = "753GS6hFQiXv"
    
    var body: some View {
        VStack {
            TextField("Insert a call id", text: $callId)
                .textFieldStyle(.roundedBorder)
                .padding()
            
            Button {
                resignFirstResponder()
                callViewModel.startCall(
                    callType: "default",
                    callId: callId,
                    members: [/* Your list of participants goes here. */]
                )
            } label: {
                Text("Start a call")
            }
        }
        .padding()
        .modifier(CallModifier(viewModel: callViewModel))
    }
}

#Preview {
    ContentView()
}
