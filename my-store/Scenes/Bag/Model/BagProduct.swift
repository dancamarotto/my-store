import Foundation

struct BagProduct: Hashable {
    let product: Product
    var quantity: Int
    var totalPrice: Decimal
    
    init(product: Product, quantity: Int) {
        self.product = product
        self.quantity = quantity
        totalPrice = product.price * Decimal(quantity)
    }
    
    static func == (lhs: BagProduct, rhs: BagProduct) -> Bool {
        lhs.product == rhs.product
    }
}
