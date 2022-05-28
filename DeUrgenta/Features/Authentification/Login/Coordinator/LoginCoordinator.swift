import Foundation
import SwiftUI
import UIKit

final class LoginCoordinator: NSObject, Coordinator {
    var childCoordinators: [Coordinator] = []
    var navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
        super.init()
    }

    func start() {
        let viewController = UIHostingController(rootView: LoginView())
        let navigation = UINavigationController(rootViewController: viewController)
        navigationController.present(navigation, animated: true)
    }
}
