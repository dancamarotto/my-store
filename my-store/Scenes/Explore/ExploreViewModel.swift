import Foundation
import DCUtils
import Combine

class ExploreViewModel: ObservableObject {
    private let service: StoreService
    private var cancellables = Set<AnyCancellable>()
    
    @Published var isLoading = false
    @Published var products = [Product]()
    
    init(service: StoreService = StoreService(network: DCNetwork())) {
        self.service = service
    }
    
    func fetchProducts() {
        isLoading = true
        service
            .fetchProducts()
            .receive(on: DispatchQueue.main)
            .sink { [weak self] error in
                self?.isLoading = false
                print(error)
            } receiveValue: { [weak self] products in
                self?.isLoading = false
                self?.products = products
            }.store(in: &cancellables)
    }
}

class StoreService {
    let network: DCNetwork
    private let url = "https://fakestoreapi.com"
    
    init(network: DCNetwork) {
        self.network = network
    }
    
    func fetchProducts() -> Future<[Product], NetworkError> {
        let builder = DCNetworkRequestBuilder()
            .setPath("/products")
        return network.request(url: url, parameterBuilder: builder)
    }
}
