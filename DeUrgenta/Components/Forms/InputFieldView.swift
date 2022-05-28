import SwiftUI

struct InputFieldView: View {
    var label: String
    var isSecureField: Bool = false
    var errorMessage: String?

    @Binding var fieldData: String
    @Binding var showError: Bool

    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(label)
                .font(.ibmPlex(.medium, size: 14))
                .foregroundColor(.fieldLabel)
            HStack {
                if isSecureField {
                    SecureField("", text: $fieldData)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                } else {
                    TextField("", text: $fieldData)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                        .keyboardType(.emailAddress)
                }
            }
            .padding(.horizontal, 13)
            .padding(.vertical, 10)
            .frame(height: 42)

            .overlay(
                RoundedRectangle(cornerRadius: 6, style: .continuous)
                    .stroke(showError ? Color.fieldErrorBorder : Color.fieldBorder, lineWidth: 1)
            )
            .shadow(color: .black.opacity(0.05), radius: 2, x: 0, y: 1)

            if let error = errorMessage,
               showError {
                Text(error)
                    .fixedSize(horizontal: false, vertical: true)
                    .foregroundColor(.black)
            }
        }
    }
}

struct InputFieldView_Previews: PreviewProvider {
    @State static var email: String = ""
    @State static var showError = true

    static var previews: some View {
        InputFieldView(label: "E-mail",
                       errorMessage: "Error",
                       fieldData: $email,
                       showError: $showError)
            .previewLayout(.sizeThatFits)
    }
}
