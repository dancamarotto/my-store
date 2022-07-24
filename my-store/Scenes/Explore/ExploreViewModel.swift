import Foundation
import DCUtils
import Combine

//class ExploreViewModel {
//    let service: StoreService
//    var cancellables = Set<AnyCancellable>()
//    
//    init(service: StoreService = StoreService(network: DCNetwork())) {
//        self.service = service
//    }
//    
//    func fetchProducts() {
//        service
//            .fetchProducts()
//            .sink { error in
//                print(error)
//            } receiveValue: { product in
//                print(product)
//            }.store(in: &cancellables)
//    }
//}
//
//class StoreService {
//    let network: DCNetwork
//    
//    init(network: DCNetwork) {
//        self.network = network
//    }
//    
//    func fetchProducts() -> Future<[Product], NetworkError> {
//        network
//            .request()
//    }
//}
