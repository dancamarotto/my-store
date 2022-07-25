import SwiftUI

enum Tabs: String {
    case discover = "Discover"
    case explorer = "Explorer"
    case bag = "Bag"
    case profile = "Profile"
}

struct Navigation: View {
    @State var selectedTab = Tabs.discover
    
    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView()
                .tag(Tabs.discover)
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            ExploreView()
                .tag(Tabs.explorer)
                .tabItem {
                    Label("Shop", systemImage: "magnifyingglass")
                }
            
            BagView()
                .tag(Tabs.bag)
                .tabItem {
                    Label("Bag", systemImage: "bag")
                }
            
            Text("Profile")
                .tag(Tabs.profile)
                .tabItem {
                    Label("Profile", systemImage: "person.crop.circle")
                }
        }
        .accentColor(.black)
        .navigationTitle(selectedTab.rawValue)
        .navigationBarBackButtonHidden(true)
    }
}

struct NavigationController_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            Navigation()
        }
    }
}
