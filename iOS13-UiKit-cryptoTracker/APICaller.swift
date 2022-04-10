//
//  APICaller.swift
//  iOS13-UiKit-cryptoTracker
//
//  Created by TheGIZzz on 10/4/2565 BE.
//

import Foundation

final class APICaller {
    static let shared = APICaller()
    
    private struct Constants {
        static let apiKey = "EE5F52E1-8BFA-41D8-91A8-7D6F41044D58"
        static let assetsEndpoint = "https://rest-sandbox.coinapi.io/v1/assets/"
    }
    
    private init() {
        
    }
    
    // MARK: - Public
    public func getAllCryptoData(completion: @escaping (Result<[String], Error>) -> Void) {
        guard let url = URL(string: Constants.assetsEndpoint + "?apiKey=" + Constants.apiKey) else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data, error == nil else {
                return
            }
            
            do {
                
            }
            
            catch {
                completion(.failure(error))
            }
        }
    }
}
