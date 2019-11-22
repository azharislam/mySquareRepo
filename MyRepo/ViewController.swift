//
//  ViewController.swift
//  MyRepo
//
//  Created by Azhar Islam on 22/11/2019.
//  Copyright © 2019 Azhar Islam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let squareNetwork = SquareAPI()

    override func viewDidLoad() {
        super.viewDidLoad()
        squareNetwork.downloadJSON()
    }


}

//
//func downloadJSON() {
//       guard let downloadURL = url else {return}
//       URLSession.shared.dataTask(with: downloadURL) { data, urlResponse, error in
//           guard let data = data, error == nil, urlResponse != nil else {
//               print("Error downloading JSON file")
//               return
//           }
//           print("Succesfully downloaded JSON file")
//           do
//           {
//               let decoder = JSONDecoder()
//               let downloadedTransactions = try decoder.decode(TransactionModel.self, from: data)
//               self.transactions = downloadedTransactions.data
//               print("Success")
//               DispatchQueue.main.async {
//                   self.tableView.reloadData()
//               }
//           } catch {
//               print(error)
//               print("Error while trying to download")
//           }
//       }.resume()
//   }
