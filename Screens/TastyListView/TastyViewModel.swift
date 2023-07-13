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
    @Published var isLoading: Bool = false

    @Published var isShownigDetail = false
    @Published var selectedTastyModel : TastyModel?
    func getTastyData(){
        isLoading = true
        NetworkManager.shared.getTastyData { result in
            DispatchQueue.main.async { [self] in
                isLoading = false
                switch result {
                case .success(let tastyData):
                    self.tastyData = tastyData
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
}
