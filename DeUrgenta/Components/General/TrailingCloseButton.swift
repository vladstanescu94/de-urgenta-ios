import SwiftUI

struct TrailingCloseButton: View {
    var action: () -> Void

    var body: some View {
        HStack {
            Spacer()
            Button(action: {
                action()
            }, label: {
                Image(systemName: "xmark")
                    .resizable()
                    .frame(width: 14.4, height: 14.4)
                    .foregroundColor(.regularText)
            })
        }
    }
}

struct TrailingCloseButton_Previews: PreviewProvider {
    static var previews: some View {
        TrailingCloseButton {
            print("Closing view")
        }
        .previewLayout(.sizeThatFits)
    }
}
