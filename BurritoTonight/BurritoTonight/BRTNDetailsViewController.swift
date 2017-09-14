//
//  BRTNDetailsViewController.swift
//  BurritoTonight
//
//  Created by Doug Suriano on 9/12/17.
//  Copyright © 2017 DougSuriano. All rights reserved.
//

import UIKit

class BRTNDetailsViewController: UIViewController
{
    let burrito: BRTNBurrito

    lazy var detailView: BRTNDetailsView = {
        let view = BRTNDetailsView()
        return view
    }()
    
    required init(burrito: BRTNBurrito)
    {
        self.burrito = burrito
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder)
    {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView()
    {
        self.view = detailView
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        setupSubviews()
        setupConstraints()
        setupContent()
    }
    
    func setupSubviews()
    {
        
    }
    
    func setupConstraints()
    {
        
    }
    
    func setupContent()
    {
        
    }

}
