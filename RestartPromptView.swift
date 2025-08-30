//
//  RestartPromptView.swift
//  PushUps
//
//  Created by Berk Dogan on 21/6/2025.
//

import SwiftUI

struct RestartPromptView: View {
    @Environment(\.dismiss) private var dismiss

    var body: some View {
        NavigationStack {
            ZStack {

                VStack(spacing: 20) {
                    Image(systemName: "checkmark.circle.fill")
                        .font(.system(size: 60))
                        .foregroundStyle(.accent)
                        .padding(20)

                    Text("Upgrade Successful!")
                        .font(.title2.bold())

                    Text("To ensure all premium features work correctly, please restart the app.")
                        .multilineTextAlignment(.center)
                        .foregroundStyle(.secondary)
                        .padding(.horizontal)

                    Button {
                        exit(0)
                    } label: {
                        Text("Restart Now")
                            .font(.headline)
                            .frame(maxWidth: .infinity)
                            .foregroundStyle(.white)
                            .padding()
                            .background(
                                RoundedRectangle(cornerRadius: 15)
                                    .fill(.accent)
                            )
                    }
                    .padding(.horizontal)
                    .padding(.top)

                    Button {
                        dismiss()
                    } label: {
                        Text("Later")
                            .foregroundStyle(.secondary)
                    }
                }
                .padding()
            }
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}
