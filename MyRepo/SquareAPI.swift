//
//  SquareAPI.swift
//  MyRepo
//
//  Created by Azhar Islam on 22/11/2019.
//  Copyright © 2019 Azhar Islam. All rights reserved.
//

import Foundation

protocol NetworkRequestHandler {
    func requestAPI()
}

class SquareAPI {
    
    final let url = URL(string: "https://api.github.com/orgs/square/repos")

    var squares = [SquareInfo]()
    
//    func decodeJSON() {
//        guard let downloadURL = url else {return}
//
//        URLSession.shared.dataTask(with: downloadURL) {
//            data, urlResponse, error in
//            guard let data = data, error == nil, urlResponse != nil else {
//                print("Error downloading JSON")
//                return
//            }
//            print("Downloaded.. Success!")
//            do {
//                let decoder = JSONDecoder()
//                let downloadedSquares = try decoder.decode(SquareInfo.self, from: data)
//                self.squares = downloadedSquares.data
//            }
//        }
//    }
//
//}



func downloadJSON() {
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
               let downloadedSquares = try decoder.decode(Square.self, from: data)
            self.squares = downloadedSquares.square
               print("Success")
//               DispatchQueue.main.async {
//                   self.tableView.reloadData()
//               }
           } catch {
               print(error)
               print("Error while trying to download")
           }
       }.resume()
   }
}
