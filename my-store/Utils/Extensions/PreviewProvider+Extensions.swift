import SwiftUI

extension PreviewProvider {
    static var product: Product {
        Product(id: 1,
                title: "Cotton Jacket",
                price: 55.99,
                description: "great outerwear jackets for Spring/Autumn/Winter, suitable for many occasions",
                category: "men's clothing",
                image: "cottom-jacket")
    }
    
    static func bagItem(qty: Int) -> BagProduct {
        BagProduct(product: product, quantity: qty)
    }
}
