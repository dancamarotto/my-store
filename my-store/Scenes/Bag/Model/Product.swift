import Foundation

struct Product: Decodable, Hashable {
    let id: Int
    let title: String
    let price: Decimal
    let description: String
    let category: String
    let image: String
}
