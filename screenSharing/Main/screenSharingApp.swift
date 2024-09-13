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
            setupStreamVideo(with: "mmhfdzb5evj2", userCredentials: .demoUser)
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
            id: "Satele_Shan",
            name: "Test User 1",
            imageURL: URL(string: "https://vignette.wikia.nocookie.net/starwars/images/2/20/LukeTLJ.jpg")!,
            customData: [:]
        ),
        token: UserToken(rawValue: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJodHRwczovL3Byb250by5nZXRzdHJlYW0uaW8iLCJzdWIiOiJ1c2VyL1NhdGVsZV9TaGFuIiwidXNlcl9pZCI6IlNhdGVsZV9TaGFuIiwidmFsaWRpdHlfaW5fc2Vjb25kcyI6NjA0ODAwLCJpYXQiOjE3MjYyMjk0OTUsImV4cCI6MTcyNjgzNDI5NX0.Ygj9XX-5EWpLqfrml-UUgXLkJxUXHUgZJv6TUH0hDuE")
    )
}
