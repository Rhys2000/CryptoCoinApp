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

        //Updates allCoins and searchText
        $searchText
            .combineLatest(dataService.$allCoins)
            .debounce(for: .seconds(0.5), scheduler: DispatchQueue.main)
            .map { (text, startingCoins) -> [Coin] in
                guard !text.isEmpty else {
                    return startingCoins
                }
                let lowercasedText = text.lowercased()
                return startingCoins.filter { (coin) in
                    return coin.name.lowercased().contains(lowercasedText) || coin.symbol.lowercased().contains(lowercasedText) || coin.id.lowercased().contains(lowercasedText)
                }
            }
            .sink { [weak self] (returnedCoins) in
                self?.allCoins = returnedCoins
            }
            .store(in: &cancellables)
    }
    
}
