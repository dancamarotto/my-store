import SwiftUI

struct EmptyBagView: View {
    var body: some View {
        VStack {
            Spacer()
            Image(systemName: "bag")
                .font(.system(size: 35))
                .padding()
            Text("Your bag is empty.")
                .font(.avenirNext(size: 16))
            Text("When you add products, they'll appear here.")
                .font(.avenirNext(size: 16))
            Spacer()
        }
    }
}

struct EmptyBagView_Previews: PreviewProvider {
    static var previews: some View {
        EmptyBagView()
    }
}
