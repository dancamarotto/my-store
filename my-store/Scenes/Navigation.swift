import SwiftUI

struct Navigation: View {
    let bagViewModel = BagViewModel()
    
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            Text("Shop")
                .tabItem {
                    Label("Shop", systemImage: "magnifyingglass")
                }
            
            NavigationView {
                BagView(vm: bagViewModel)
            }
            .tabItem {
                Label("Bag", systemImage: "bag")
            }
            
            Text("Profile")
                .tabItem {
                    Label("Profile", systemImage: "person.crop.circle")
                }
        }
        .accentColor(.black)
    }
}

struct NavigationController_Previews: PreviewProvider {
    static var previews: some View {
        Navigation()
    }
}
