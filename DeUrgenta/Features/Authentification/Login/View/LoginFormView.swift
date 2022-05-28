import SwiftUI

struct LoginFormView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 24) {
            InputFieldView(label: AppStrings.Authentication.Email.inputLabel.localized(), fieldData: .constant(""), showError: .constant(false))
            InputFieldView(label: AppStrings.Authentication.Password.inputLabel.localized(), isSecureField: true, fieldData: .constant(""), showError: .constant(false))

            Button(action: {
                print("")
            }, label: {
                VStack {
                    Text(AppStrings.Authentication.loginForgotPasswordLabel.localized())
                        .font(.ibmPlex(.medium, size: 14))
                        .foregroundColor(.accent)
                }
            })

            Button(action: {
                print("")
            }, label: {
                Text(AppStrings.Authentication.loginButtonTitle.localized())
                    .font(.ibmPlex(.bold, size: 16))
                    .foregroundColor(.white)
            })
            .background(Color.red)
        }
    }
}

struct LoginFormView_Previews: PreviewProvider {
    static var previews: some View {
        LoginFormView()
            .previewLayout(.sizeThatFits)
    }
}
