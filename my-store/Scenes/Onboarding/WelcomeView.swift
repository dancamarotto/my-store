import SwiftUI

struct WelcomeView: View {
    var body: some View {
        VStack(alignment: .leading) {
            GeometryReader { geo in
                Image("onboarding-store")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                    .frame(width: geo.size.width)
            }
            
            Text("WELCOME\nTO MY-STORE")
                .fontWeight(.medium)
                .font(.avenirNext(size: 20))
                .padding()
            
            Text("Experience the quickest way to shop, a personalised home page and exclusive discounts.")
                .font(.avenirNext(size: 18))
                .padding([.leading, .trailing])
            
            HStack {
                Spacer()
                    .frame(maxWidth: .infinity)
                
                NavigationLink {
                    NotificationView()
                } label: {
                    Text("Next")
                        .style(.light)
                }
                .padding()
            }
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
