import SwiftUI

struct LoginView: View {
    var body: some View {
        VStack(alignment: .leading) {
            TrailingCloseButton(action: {
                print("Closing item")
            })
            .padding(.top, 25)
            .padding(.trailing, 4.8)

            Text(AppStrings.Authentication.loginIntro.localized())
                .font(.ibmPlex(.bold, size: 24))
                .padding(.bottom, 24)
            LoginFormView()
            Spacer()
        }
        .padding(.horizontal, 20)
        .navigationBarHidden(true)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
