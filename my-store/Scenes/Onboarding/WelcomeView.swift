import SwiftUI

struct WelcomeView: View {
    var body: some View {
        
        NavigationView {
        
        VStack(alignment: .leading) {
            GeometryReader { geo in
                Image("onboarding-store")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                    .frame(width: geo.size.width)
            }
            
            HStack {
                Text("WELCOME\nTO MY-STORE")
                    .fontWeight(.medium)
                    .font(.avenirNext(size: 20))
                Spacer()
            }
            .padding()
            
            Text("Experience the quickest way to shop, a personalised home page and exclusive discounts.")
                .font(.avenirNext(size: 18))
                .frame(maxWidth: .infinity)
            
            HStack {
                Spacer()
                    .frame(maxWidth: .infinity)
                
                NavigationLink {
                    NotificationView()
                } label: {
                    Text("Next")
                        .font(.avenirNext(size: 18))
                        .padding()
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.black)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.black, lineWidth: 1)
                        )
                }
                .padding()
            }
        }
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
