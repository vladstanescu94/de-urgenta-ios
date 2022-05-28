import SwiftUI

struct LoginView: View {
    var body: some View {
        VStack(alignment: .leading) {
            TrailingCloseButton(action: {
                print("Closing item")
            })
            .padding(.top, 25)
            .padding(.trailing, 4.8)

            Text("Autentifica-te")
                .font(.largeTitle)

            Spacer()
        }
        .padding(.horizontal, 20)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
