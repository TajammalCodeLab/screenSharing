//
//  CallContainerSetup.swift
//

import SwiftUI
import StreamVideo
import StreamVideoSwiftUI

struct CallContainerSetup: View {
    @ObservedObject var viewModel: CallViewModel
    
    private var client: StreamVideo
    private let apiKey: String = "mmhfdzb5evj2" // The API key can be found in the Credentials section
    private let userId: String = "Rahm_Kota" // The User Id can be found in the Credentials section
    private let token: String = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJodHRwczovL3Byb250by5nZXRzdHJlYW0uaW8iLCJzdWIiOiJ1c2VyL1JhaG1fS290YSIsInVzZXJfaWQiOiJSYWhtX0tvdGEiLCJ2YWxpZGl0eV9pbl9zZWNvbmRzIjo2MDQ4MDAsImlhdCI6MTcyNzI2NzM0MSwiZXhwIjoxNzI3ODcyMTQxfQ.hfnIFRND8zuYDoBmKhK5JDJMsXBoABe1tEEEECdz57E" // The Token can be found in the Credentials section
    private let callId: String = "AoIVTQ00orVv" // The CallId can be found in the Credentials section
    
    init() {
        let user = User(
            id: userId,
            name: "Tajammal", // name and imageURL are used in the UI
            imageURL: .init(string: "https://avatars.githubusercontent.com/u/178316274?v=4")
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
                    CallContainer(viewFactory: CustomViewFactory(), viewModel: viewModel)
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



