//
//  SkeletonModifier.swift
//  SkeltonKit
//
//  Created by Jestin Saji on 22/09/26.
//


import SwiftUI

public struct SkeletonModifier: ViewModifier {

    let isLoading: Bool
    let configuration: SkeletonConfiguration

    public func body(content: Content) -> some View {

        content
            .opacity(isLoading ? 0 : 1)
            .overlay {
                if isLoading {
                    SkeletonView(
                        configuration: configuration
                    )
                }
            }
            .animation(
                .easeOut(duration: 0.3),
                value: isLoading
            )
    }
}