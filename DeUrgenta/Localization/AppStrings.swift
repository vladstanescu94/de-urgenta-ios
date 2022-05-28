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

    enum Authentication: String, Localizable {
        case loginIntro = "Authentication.loginIntro"
        case loginForgotPasswordLabel = "Authentication.loginForgotPasswordLabel"
        case loginButtonTitle = "Authentication.loginButtonTitle"

        enum Email: String, Localizable {
            case inputLabel = "Authentication.Email.inputLabel"
            case invalidMessage = "Authentication.Email.invalidMessage"
        }

        enum Password: String, Localizable {
            case inputLabel = "Authentication.Password.inputLabel"
            case invalidMessage = "Authentication.Password.invalidMessage"
        }
    }
}
