////
////  ContentView.swift
////  screenSharing
////
////  Created by SID on 12/09/2024.
////
//
//import SwiftUI
//import StreamVideo
//import StreamVideoSwiftUI
//
//struct MeetingOptionsView: View {
//    let borderGradient = LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing)
//    
//    var body: some View {
//        NavigationView {
//            /// NEW MEETING AND START MEETING BOX
//            HStack {
//                NavigationLink {
//                    PreJoinScreen()
//                } label: {
//                    VStack(alignment: .leading) {
//                        HStack {
//                            Image(systemName: "person.circle.fill")
//                                .font(.title2)
//                            Spacer()
//                            Image(systemName: "ellipsis")
//                                .rotationEffect(.degrees(90))
//                        }
//                        
//                        Spacer()
//                        
//                        Text("New Meeting")
//                    }
//                    .padding()
//                    .frame(width: 160, height: 160)
//                    .background(.ultraThinMaterial)
//                    .cornerRadius(20)
//                }
//                
//                VStack(alignment: .leading) {
//                    HStack {
//                        Image(systemName: "plus")
//                            .font(.title2)
//                        Spacer()
//                    }
//                    
//                    Spacer()
//                    
//                    Text("Create New room")
//                }
//                .padding()
//                .frame(width: 160, height: 160)
//                .background(.ultraThinMaterial)
//                .cornerRadius(20)
//            }
//            .navigationTitle("")
//            
//            /// TOP BAR FUNCTIONALLITY
//            .toolbar {
//                
//                ToolbarItem(placement: .topBarLeading){
//                    Text("Welcome To Shera").bold()
//                }
//                
//                ToolbarItem(placement: .topBarTrailing) {
//                    Image(.image5)
//                        .resizable()
//                        .scaledToFit()
//                        .clipShape(Circle())
//                        .frame(width: 42, height: 42)
//                        .overlay(Circle().stroke().foregroundStyle(borderGradient))
//                }
//            }
//        }
//    }
//}
//
//
