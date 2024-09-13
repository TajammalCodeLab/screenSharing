//
//  CallContainerSetup.swift
//  VideoConferencingSwiftUI
//
//  Created by amos.gyamfi@getstream.io on 18.9.2023.
//

import SwiftUI
import StreamVideo
import StreamVideoSwiftUI

struct CallContainerSetup: View {
    @ObservedObject var viewModel: CallViewModel
    
    private var client: StreamVideo
    private let apiKey: String = "mmhfdzb5evj2" // The API key can be found in the Credentials section
    private let userId: String = "Satele_Shan" // The User Id can be found in the Credentials section
    private let token: String = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoiS2ktQWRpLU11bmRpIiwiaXNzIjoicHJvbnRvIiwic3ViIjoidXNlci9LaS1BZGktTXVuZGkiLCJpYXQiOjE2OTU4MTU1NzAsImV4cCI6MTY5NjQyMDM3NX0.r58E2FvzYV34sMATK13-m6cz7SFZzG-tB7ehi_sQgjA" // The Token can be found in the Credentials section
    private let callId: String = "753GS6hFQiXv" // The CallId can be found in the Credentials section
    
    init() {
        let user = User(
            id: userId,
            name: "Amos G", // name and imageURL are used in the UI
            imageURL: .init(string: "https://getstream.io/static/2796a305dd07651fcceb4721a94f4505/a3911/martin-mitrevski.webp")
        )
        
        // Initialize Stream Video client
        self.client = StreamVideo(
            apiKey: apiKey,
            user: user,
            token: .init(stringLiteral: token)
        )
        
        self.viewModel = .init()
    }
    
    var body: some View {
        NavigationView{
            VStack {
                if viewModel.call != nil {
                    //CallContainer(viewFactory: DefaultViewFactory.shared, viewModel: viewModel)
                    
                    //CallContainer(viewFactory: CustomViewFactory(), viewModel: viewModel)
                } else {
                    Text("loading...")
                }
            }
            .ignoresSafeArea()
            .onAppear {
                Task {
                    guard viewModel.call == nil else { return }
                    viewModel.joinCall(callType: .default, callId: callId)
                }
            }
        }
        
    }
}



