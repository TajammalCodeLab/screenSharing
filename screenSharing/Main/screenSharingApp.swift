//
//  screenSharingApp.swift
//  screenSharing
//
//  Created by SID on 12/09/2024.
//

import SwiftUI
import StreamVideo
import StreamVideoSwiftUI

@main
struct screenSharingApp: App {
    @State var streamVideo: StreamVideoUI?

        init() {
            setupStreamVideo(with: "key1", userCredentials: .demoUser)
        }

        private func setupStreamVideo(
            with apiKey: String,
            userCredentials: UserCredentials
        ) {
            streamVideo = StreamVideoUI(
                apiKey: apiKey,
                user: userCredentials.user,
                token: userCredentials.token,
                tokenProvider: { result in
                    // Call your networking service to generate a new token here.
                    // When finished, call the result handler with either .success or .failure.
                    result(.success(userCredentials.token))
                }
            )
        }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

struct UserCredentials {
    let user: User
    let token: UserToken
}

extension UserCredentials {
    static let demoUser = UserCredentials(
        user: User(
            id: "testuser",
            name: "Test User",
            imageURL: URL(string: "https://vignette.wikia.nocookie.net/starwars/images/2/20/LukeTLJ.jpg")!,
            customData: [:]
        ),
        token: UserToken(rawValue: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdHJlYW0tdmlkZW8tZ29AdjAuMS4wIiwic3ViIjoidXNlci90ZXN0dXNlciIsImlhdCI6MTY2NjY5ODczMSwidXNlcl9pZCI6InRlc3R1c2VyIn0.h4lnaF6OFYaNPjeK8uFkKirR5kHtj1vAKuipq3A5nM0")
    )
}
