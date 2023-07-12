//
//  NetworkManager.swift
//  Tasty
//
//  Created by Anastasia Lenina on 11.07.2023.
//

import Foundation
//singleton reccomends from Apple documentation
final class NetworkManager {

    static let shared = NetworkManager()
    private let baseURL = "https://seanallen-course-backend.herokuapp.com/swiftui-fundamentals/appetizers"
    private init() {}
    func getTastyData(completed: @escaping (Result<[TastyModel], APIError>) -> Void) {
        guard let url = URL(string: baseURL) else {
            completed(.failure(.invalidURL))
            return
        }
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, response, error in
            if let _ = error {
                completed(.failure(.unableToComplete))
                return
            }
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completed(.failure(.invalidResponse))
                return
            }
            guard let data = data else {
                completed(.failure(.invalidData))
                return
            }
            do {
                let decodedData = try JSONDecoder().decode(TastyResponse.self, from: data)
                completed(.success(decodedData.request))
            } catch {
                completed(.failure(.invalidData))
            }
        }
        task.resume()
    }
}
