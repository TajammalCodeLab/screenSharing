//
//  AroundMeetingTopView.swift
//  screenSharing
//
//  Created by SID on 14/09/2024.
//

import SwiftUI

import StreamVideo
import StreamVideoSwiftUI

struct AroundMeetingTopView: View {
    @ObservedObject var viewModel: CallViewModel
    var participants: [CallParticipant]
    
    var body: some View {
        HStack {
            Button {
                
            } label: {
                Image(.image4)
            }
            .font(.title2)
            .bold()
            
            Text("All Hands")
            
            Spacer()
            
            HStack {
                Image(systemName: "person.3")
                Text("\(viewModel.participants.count)")
            }
            
            Spacer()
            
            Button {
                //HangUpIconView(viewModel: viewModel)
                viewModel.hangUp()
            } label: {
                Text("Leave")
                    .padding(EdgeInsets(top: 12, leading: 24, bottom: 12, trailing: 24))
                    .foregroundStyle(.white)
                    .background(Capsule().foregroundStyle(.red))
            }
            .buttonStyle(.plain)
        }
        .padding(EdgeInsets(top: 64, leading: 16, bottom: 24, trailing: 16))
    }
}


