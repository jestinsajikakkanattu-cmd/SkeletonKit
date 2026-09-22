//
//  SkeletonKit.swift
//  SkeltonKit
//
//  Created by Jestin Saji on 22/09/26.
//


import SwiftUI

public extension View {

    func skeleton(
        isLoading: Bool,
        configuration: SkeletonConfiguration = .default
    ) -> some View {

        modifier(
            SkeletonModifier(
                isLoading: isLoading,
                configuration: configuration
            )
        )
    }
}
