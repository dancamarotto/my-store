import SwiftUI

struct BagView: View {
    @ObservedObject var vm: BagViewModel
    
    var body: some View {
        VStack {
            if vm.bagItems.isEmpty {
                EmptyBagView()
            } else {
                BagItemsView(vm: vm)
            }
            Spacer()
            Button {
                print("Bag button pressed")
                vm.addProduct()
            } label: {
                Text(vm.actionButtonTitle)
                    .fontWeight(.semibold)
                    .font(.avenirNext(size: 20))
                    .foregroundColor(.white)
                    .padding([.top, .bottom])
                    .frame(maxWidth: .infinity)
                    .background(Color.black)
                    .cornerRadius(50)
                    .padding([.leading, .trailing, .bottom])
            }
        }.navigationTitle("Bag")
    }
}

struct BagView_Previews: PreviewProvider {
    static var previews: some View {
        let vm = BagViewModel()
        vm.append(bagItem(qty: 1))
        
        return NavigationView {
            BagView(vm: vm)
        }
    }
}
