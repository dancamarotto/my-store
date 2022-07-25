import SwiftUI

struct ExploreView: View {
    @ObservedObject var vm = ExploreViewModel()
    
    var body: some View {
        Text(vm.products.first?.title ?? "nil")
            .onAppear {
                vm.fetchProducts()
            }
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ExploreView()
        }
    }
}
