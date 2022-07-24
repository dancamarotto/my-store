import Foundation

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
