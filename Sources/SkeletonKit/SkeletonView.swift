//
//  SkeletonView.swift
//  SkeltonKit
//
//  Created by Jestin Saji on 22/09/26.
//


import SwiftUI

public struct SkeletonView: View {

    private let configuration: SkeletonConfiguration

    @State private var animationValue: CGFloat = -1

    public init(
        configuration: SkeletonConfiguration = .default
    ) {
        self.configuration = configuration
    }

    public var body: some View {
        GeometryReader { geometry in
            RoundedRectangle(
                cornerRadius: configuration.cornerRadius
            )
            .fill(configuration.baseColor)
            .overlay {
                animationOverlay(
                    size: geometry.size
                )
            }
            .clipShape(
                RoundedRectangle(
                    cornerRadius: configuration.cornerRadius
                )
            )
        }
        .onAppear {
            startAnimation()
        }
    }

    @ViewBuilder
    private func animationOverlay(
        size: CGSize
    ) -> some View {

        switch configuration.style {

        case .shimmer:
            shimmer(size: size)

        case .pulse:
            configuration.highlightColor
                .opacity(
                    animationValue == 1 ? 0.7 : 0
                )

        case .wave:
            wave(size: size)

        case .solid:
            EmptyView()
        }
    }

    private func shimmer(
        size: CGSize
    ) -> some View {

        LinearGradient(
            colors: [
                .clear,
                configuration.highlightColor,
                .clear
            ],
            startPoint: .leading,
            endPoint: .trailing
        )
        .frame(
            width: size.width * 0.7
        )
        .offset(
            x: animationValue * size.width
        )
    }

    private func wave(
        size: CGSize
    ) -> some View {

        LinearGradient(
            stops: [
                .init(
                    color: .clear,
                    location: 0
                ),
                .init(
                    color: configuration.highlightColor,
                    location: 0.5
                ),
                .init(
                    color: .clear,
                    location: 1
                )
            ],
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
        .frame(
            width: size.width * 1.2
        )
        .rotationEffect(.degrees(15))
        .offset(
            x: animationValue * size.width
        )
    }

    private func startAnimation() {

        guard configuration.isAnimated else {
            return
        }

        animationValue = -1

        withAnimation(
            .linear(
                duration: configuration.duration
            )
            .repeatForever(
                autoreverses: false
            )
            .delay(configuration.delay)
        ) {
            animationValue = 1.5
        }
    }
}