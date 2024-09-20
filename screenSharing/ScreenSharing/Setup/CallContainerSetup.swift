////
////  CallContainerSetup.swift
////
//
//import SwiftUI
//import StreamVideo
//import StreamVideoSwiftUI
//
//struct CallContainerSetup: View {
//    @ObservedObject var viewModel: CallViewModel
//    
//    private var client: StreamVideo
//    private let apiKey: String = "mmhfdzb5evj2" // The API key can be found in the Credentials section
//    private let userId: String = "Satele_Shan" // The User Id can be found in the Credentials section
//    private let token: String = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJodHRwczovL3Byb250by5nZXRzdHJlYW0uaW8iLCJzdWIiOiJ1c2VyL0x1a2VfU2t5d2Fsa2VyIiwidXNlcl9pZCI6Ikx1a2VfU2t5d2Fsa2VyIiwidmFsaWRpdHlfaW5fc2Vjb25kcyI6NjA0ODAwLCJpYXQiOjE3MjYzMjQzOTEsImV4cCI6MTcyNjkyOTE5MX0.UdSKs98RemKlmXGAybkdXe5DML2dLogN4vfz75hNojc" // The Token can be found in the Credentials section
//    private let callId: String = "AoIVTQ00orVv" // The CallId can be found in the Credentials section
//    
//    init() {
//        let user = User(
//            id: userId,
//            name: "Tajammal", // name and imageURL are used in the UI
//            imageURL: .init(string: "https://avatars.githubusercontent.com/u/178316274?v=4")
//        )
//        
//        // Initialize Stream Video client
//        self.client = StreamVideo(
//            apiKey: apiKey,
//            user: user,
//            token: .init(stringLiteral: token)
//        )
//        
//        self.viewModel = .init()
//    }
//    
//    var body: some View {
//        NavigationView{
//            VStack {
//                if viewModel.call != nil {
//                    CallContainer(viewFactory: DefaultViewFactory.shared, viewModel: viewModel)
//                    //CallContainer(viewFactory: CustomViewFactory(), viewModel: viewModel)
//                } else {
//                    Text("loading...")
//                }
//            }
//            .ignoresSafeArea()
//            .onAppear {
//                Task {
//                    guard viewModel.call == nil else { return }
//                    viewModel.joinCall(callType: .default, callId: callId)
//                }
//            }
//        }
//        
//    }
//}
//
//
//
