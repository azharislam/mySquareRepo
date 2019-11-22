//
//  ViewController.swift
//  MyRepo
//
//  Created by Azhar Islam on 22/11/2019.
//  Copyright © 2019 Azhar Islam. All rights reserved.
//

import UIKit

class SquareRepoViewController: UIViewController {
    
    private var network = SquareAPI()
    var squares = [SquareInfo]()
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        network.fetchData(completion: {
            self.tableView.reloadData()
        })
    }


}

extension SquareRepoViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return squares.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //dequeue cell here
        return UITableViewCell()
    }
    
    
}
