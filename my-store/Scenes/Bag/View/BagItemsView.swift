import SwiftUI

struct BagItemsView: View {
    @ObservedObject var vm: BagViewModel
    
    var body: some View {
        ScrollView {
            VStack {
                ForEach(vm.bagItems, id: \.self) { product in
                    bagItemCell(product)
                }
                
                VStack {
                    HStack {
                        Text("Subtotal")
                            .font(.avenirNext(size: 16))
                        Spacer()
                        Text(vm.subtotal)
                            .font(.avenirNext(size: 16))
                    }
                    HStack {
                        Text("Delivery")
                            .font(.avenirNext(size: 16))
                        Spacer()
                        Text(vm.deliveryPrice)
                            .font(.avenirNext(size: 16))
                    }
                    HStack {
                        Text("Total")
                            .fontWeight(.medium)
                            .font(.avenirNext(size: 16))
                        Spacer()
                        Text(vm.total)
                            .fontWeight(.medium)
                            .font(.avenirNext(size: 16))
                    }
                }
                .padding([.leading, .trailing, .bottom])
            }
        }
    }
    
    @ViewBuilder
    private func bagItemCell(_ item: BagProduct) -> some View {
        VStack {
            HStack(spacing: 1) {
                Image(item.product.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100)
                    .clipped()
                VStack(alignment: .leading) {
                    Text(item.product.title)
                        .fontWeight(.medium)
                        .font(.avenirNext(size: 16))
                        .lineLimit(2)
                    Text(item.product.description)
                        .font(.avenirNext(size: 15))
                    Spacer()
                }
                Spacer()
            }
            HStack {
                Button {
                    print("quantity button pressed")
                } label: {
                    Text("Qty \(item.quantity)")
                        .foregroundColor(.black)
                        .fontWeight(.medium)
                        .font(.avenirNext(size: 16))
                }
                Spacer()
                Text(item.totalPrice.currency(.euro))
            }
            Divider()
                .padding([.top, .bottom])
        }
        .padding()
    }
}

struct BagItemsView_Previews: PreviewProvider {
    static var previews: some View {
        let vm = BagViewModel()
        vm.append(bagItem(qty: 1))
        
        return BagItemsView(vm: vm)
    }
}
