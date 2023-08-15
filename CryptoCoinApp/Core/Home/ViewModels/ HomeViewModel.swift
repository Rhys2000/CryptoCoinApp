//
//   HomeViewModel.swift
//  CryptoCoinApp
//
//  Created by Rhys Julian-Jones on 8/14/23.
//

import Foundation
import Combine

class HomeViewModel: ObservableObject {
    
    private var dataService = CoinDataService()
    private var cancellables = Set<AnyCancellable>()
    
    @Published var allCoins: [Coin] = []
    @Published var portfolioCoins: [Coin] = []
    
    @Published var searchText: String = ""
    
    init() {
        addSubscriber()
    }
    
    func addSubscriber() {
        dataService.$allCoins.sink { [weak self] (returnedCoins) in
            self?.allCoins = returnedCoins
        }
        .store(in: &cancellables)
    }
    
}
