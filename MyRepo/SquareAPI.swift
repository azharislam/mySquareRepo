//
//  SquareAPI.swift
//  MyRepo
//
//  Created by Azhar Islam on 22/11/2019.
//  Copyright © 2019 Azhar Islam. All rights reserved.
//

import Foundation

protocol DataServiceType {
  func fetchData(completion: @escaping () -> Void)
}

final class SquareAPI: DataServiceType {
    
    final let url = URL(string: "https://api.github.com/orgs/square/repos")
    private var squares = [SquareInfo]()

    func fetchData(completion: @escaping () -> Void) {
        guard let downloadURL = url else {return}
            URLSession.shared.dataTask(with: downloadURL) { data, urlResponse, error in
                guard let data = data, error == nil, urlResponse != nil else {
                    print("Error downloading JSON file")
                    return
                }
                print("Succesfully downloaded JSON file")
                do
                {
                    let decoder = JSONDecoder()
                 let downloadedSquares = try decoder.decode(Array<SquareInfo>.self, from: data)
                 self.squares = downloadedSquares
                    print("Success")
                } catch {
                    print(error)
                    print("Error while trying to download")
                }
             DispatchQueue.main.async {
                           completion()
                       }
            }.resume()
        }
}
    
