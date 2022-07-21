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

extension Decimal {
    enum CurrencyType: String {
        case euro = "EUR"
        case usDollar = "USD"
    }
    
    func currency(_ currency: CurrencyType) -> String {
        let formatter = NumberFormatter()
        formatter.maximumFractionDigits = 2
        formatter.minimumFractionDigits = 2
        formatter.minimumIntegerDigits = 2
        formatter.currencyCode = currency.rawValue
        formatter.numberStyle = .currency
        return formatter.string(from: self as NSNumber) ?? "-"
    }
}
