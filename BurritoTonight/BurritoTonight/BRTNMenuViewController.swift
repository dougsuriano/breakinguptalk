//
//  BRTNMenuViewController.swift
//  BurritoTonight
//
//  Created by Doug Suriano on 9/12/17.
//  Copyright © 2017 DougSuriano. All rights reserved.
//

import UIKit

fileprivate struct Constants
{
    static let cellReuseIdentifier = "cellReuseIdentifier"
}

class BRTNMenuViewController: UITableViewController
{
    fileprivate var burritos = [BRTNBurrito]()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        title = "BurritoTonight"
        
        burritos = BRTNBurritoProvider.mockBurritos
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: Constants.cellReuseIdentifier)
        
        tableView.reloadData()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return burritos.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Constants.cellReuseIdentifier) else
        {
            fatalError("This should never happen")
        }
        
        let burrito = burritos[indexPath.row]
        cell.textLabel?.text = burrito.name
        cell.imageView?.image = burrito.image
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let burrito = burritos[indexPath.row]
        let detailsViewController = BRTNDetailsViewController(burrito: burrito)
        navigationController?.pushViewController(detailsViewController, animated: true)
    }
}

