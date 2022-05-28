import Foundation
import SwiftUI

extension Color {
    static var accent: Color {
        Color("AccentColor")
    }

    static var secondary: Color {
        Color("HomeFG")
    }

    static var lightText: Color {
        Color("HomeFG")
    }

    static var regularText: Color {
        Color("RegularText")
    }

    static var fieldBorder: Color {
        Color("FieldBorder")
    }

    static var fieldErrorBorder: Color {
        Color("FieldErrorBorder")
    }

    static var fieldLabel: Color {
        Color("FieldLabel")
    }

    static var success: Color {
        Color("Success")
    }

    var uiColor: UIColor {
        UIColor(self)
    }

    var cgColor: CGColor {
        uiColor.cgColor
    }
}
