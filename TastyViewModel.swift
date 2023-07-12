//
//  TastyViewModel.swift
//  Tasty
//
//  Created by Anastasia Lenina on 11.07.2023.
//

import SwiftUI

class TastyViewModel: ObservableObject {
    @Published var tastyData: [TastyModel] = []
    @Published var alertItem: AlertItem?
    func getTastyData(){
        NetworkManager.shared.getTastyData {[self] result in
            switch result {
            case .success(let tastyData):
                DispatchQueue.main.async {
                    self.tastyData = tastyData
                }
                
            case .failure(let error):
                switch error {
                case .invalidData:
                    alertItem = AlertContext.invalidDatd
                case .invalidURL:
                    alertItem = AlertContext.invalidURL
                case .invalidResponse:
                    alertItem = AlertContext.invalidResponse
                case .unableToComplete:
                    alertItem = AlertContext.unableToComplete
                }
            }
        }
    }
}
