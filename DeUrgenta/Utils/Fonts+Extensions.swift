import SwiftUI

extension Font {
    enum IBMPlex {
        case regular
        case medium
        case bold
        case semibold

        var value: String {
            switch self {
            case .regular:
                return "IBMPlexSans-Regular"
            case .medium:
                return "IBMPlexSans-Medium"
            case .bold:
                return "IBMPlexSans-Bold"
            case .semibold:
                return "IBMPlexSans-SemiBold"
            }
        }
    }

    static func ibmPlex(_ type: IBMPlex, size: CGFloat) -> Font {
        .custom(type.value, size: size)
    }
}
