import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    let date = Date()
                    Text("\(date.weekday), \(date.today) \(date.month)")
                        .padding(.leading)
                        .font(.avenirNext(size: 16))
                        .foregroundColor(.gray)
                    Spacer()
                }
                
                discoverButton(
                    title: "womens clothing",
                    image: Image("womens-clothing"))
                .padding()
                
                discoverButton(
                    title: "mens clothing",
                    image: Image("mens-clothing"))
                .padding()
                
                discoverButton(
                    title: "electronics",
                    image: Image("electronics"))
                .padding()
                
                discoverButton(
                    title: "sale",
                    image: Image("sale"))
                .padding()
            }
        }
    }
    
    @ViewBuilder
    private func discoverButton(title: String, image: Image) -> some View {
        VStack {
            HStack {
                Text(title)
                    .font(.avenirNext(size: 14))
                Spacer()
            }
            Button {
                print("discover button pressed.")
            } label: {
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(maxWidth: .infinity,
                           minHeight: 250,
                           maxHeight: 300,
                           alignment: .center)
                    .clipped()
                    .cornerRadius(10)
            }
            .padding(.top, -10)
            HStack {
                Text("Learn More")
                    .font(.avenirNext(size: 16))
                    .padding([.leading, .trailing])
                    .padding([.top, .bottom], 8)
                    .background(Color.white)
                    .cornerRadius(50)
                    .padding(.top, -75)
                    .padding(.leading)
                Spacer()
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            HomeView()
                .navigationTitle("Discover")
        }
    }
}
