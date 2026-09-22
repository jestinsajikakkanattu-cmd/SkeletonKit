//
//  SkeletonConfiguration.swift
//  SkeltonKit
//
//  Created by Jestin Saji on 22/09/26.
//


import SwiftUI

public struct SkeletonConfiguration {

    public var style: SkeletonStyle
    public var cornerRadius: CGFloat
    public var duration: Double
    public var delay: Double
    public var baseColor: Color
    public var highlightColor: Color
    public var isAnimated: Bool

    public init(
        style: SkeletonStyle = .shimmer,
        cornerRadius: CGFloat = 10,
        duration: Double = 1.4,
        delay: Double = 0,
        baseColor: Color = .gray.opacity(0.18),
        highlightColor: Color = .white.opacity(0.55),
        isAnimated: Bool = true
    ) {
        self.style = style
        self.cornerRadius = cornerRadius
        self.duration = duration
        self.delay = delay
        self.baseColor = baseColor
        self.highlightColor = highlightColor
        self.isAnimated = isAnimated
    }

    public static let `default` = SkeletonConfiguration()
}

// MARK: - Skeleton Style

public enum SkeletonStyle {
    case shimmer
    case pulse
    case wave
    case solid
}