import Foundation
import Combine

class BagViewModel: ObservableObject {
    private let defaultValue = "00.00"
    private let defaultFreeShippingMessage = "Standard - Free"
    private let defaultActionWhenBagIsEmpty = "Shop Now"
    private let defaultActionWhenBagHasProduct = "Checkout"
    private var shippingRates: Decimal = 0.0
    var cancellables = Set<AnyCancellable>()
    
    @Published private(set) var actionButtonTitle: String
    @Published private(set) var bagItems: [BagProduct] = []
    @Published private(set) var subtotal: String
    @Published private(set) var total: String
    @Published private(set) var deliveryPrice: String
    
    public init() {
        subtotal = defaultValue
        total = defaultValue
        actionButtonTitle = defaultActionWhenBagIsEmpty
        deliveryPrice = defaultFreeShippingMessage
    }
    
    func append(_ item: BagProduct) {
        append([item])
    }
    
    func append(_ items: [BagProduct]) {
        bagItems.append(contentsOf: items)
        updateLabels()
    }
    
    func clearBag() {
        bagItems.removeAll()
        updateLabels()
    }
    
    func updateShipping(price: Decimal) {
        shippingRates = price > 0 ? price : 0
        if shippingRates > 0 {
            deliveryPrice = shippingRates.currency(.euro)
        } else {
            deliveryPrice = defaultFreeShippingMessage
        }
    }
    
    private func calculateSubtotal() {
        subtotal = bagItems
            .reduce(0) { $0 + $1.totalPrice }
            .currency(.euro)
    }
    
    private func calculateTotal() {
        total = bagItems
            .reduce(shippingRates) { $0 + $1.totalPrice }
            .currency(.euro)
    }
    
    private func updateLabels() {
        calculateSubtotal()
        calculateTotal()
        actionButtonTitle = bagItems.isEmpty ? defaultActionWhenBagIsEmpty : defaultActionWhenBagHasProduct
    }
    
    func addProduct() {
        let product = Product(id: 1,
                title: "Cotton Jacket",
                price: 55.99,
                description: "great outerwear jackets for Spring/Autumn/Winter, suitable for many occasions",
                category: "men's clothing",
                image: "cottom-jacket")
        let bagItem = BagProduct(product: product, quantity: 1)
        append(bagItem)
    }
}
