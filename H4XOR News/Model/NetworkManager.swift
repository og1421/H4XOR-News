//
//  NetworkManager.swift
//  H4XOR News
//
//  Created by Orlando Moraes Martins on 07/07/23.
//

import Foundation


class NetworkManager: ObservableObject {
    @Published var posts = [PostData]()
    
    func fetchData() {
        if let url = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error == nil {
                    let decoder = JSONDecoder()
                    if let safeData = data {
                        do {
                            let results = try decoder.decode(Results.self, from: safeData)
                            DispatchQueue.main.async {
                                self.posts = results.hits
                            }
                        } catch {
                            print(error)
                        }
                    }
                }
                
            }
            task.resume()
        }
    }
}
