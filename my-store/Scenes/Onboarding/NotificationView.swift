import SwiftUI

struct NotificationView: View {
    var body: some View {
        VStack {
            Image("onboarding-notification")
                .resizable()
                .frame(width: 250, height: 250)
                .aspectRatio(contentMode: .fit)
                .padding([.top], 75)
            
            Spacer()
            
            HStack {
                Text("BE THE FIRST TO KNOW")
                    .fontWeight(.medium)
                    .font(.avenirNext(size: 20))
                Spacer()
            }
            .padding()
            
            Text("Allow notifications for tailored new arrivals, exciting launches and promotions.")
                .font(.avenirNext(size: 18))
                .frame(maxWidth: .infinity)
            
            HStack(spacing: 10) {
                NavigationLink {
                    Navigation()
                } label: {
                    Text("Not now")
                        .style(.light)
                }
                NavigationLink {
                    Navigation()
                } label: {
                    Text("Yes, Notify me")
                        .style(.dark)
                }
            }
            .padding()
        }
        .navigationBarHidden(true)
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView()
    }
}
