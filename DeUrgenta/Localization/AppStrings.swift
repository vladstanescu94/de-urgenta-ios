import Foundation

protocol Localizable: RawRepresentable {
    func localized() -> String
}

extension Localizable {
    func localized() -> String {
        if let string = rawValue as? String {
            return string.localized()
        }

        return ""
    }
}

extension String {
    func localized(bundle _: Bundle = .main, tableName: String = "Localizable") -> String {
        NSLocalizedString(self, tableName: tableName, value: "**\(self)**", comment: "")
    }
}

enum AppStrings: String, Localizable {
    case dummy = ""
    case cancel

    enum LandingPage: String, Localizable {
        case tagLine = "LandingPage.tagLine"
        case authenticate = "LandingPage.authenticate"
        case createAccount = "LandingPage.createAccount"
        case viewRoutes = "LandingPage.viewRoutes"
    }
}
