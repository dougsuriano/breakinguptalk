//
//  BRTNDetailsswift
//  BurritoTonight
//
//  Created by Doug Suriano on 9/12/17.
//  Copyright © 2017 DougSuriano. All rights reserved.
//

import UIKit

fileprivate struct Constants
{
    static let imageHeightRatio: CGFloat = 0.5
    static let inset: CGFloat = 10.0
    static let buttonHeight: CGFloat = 55.0
}

class BRTNDetailsView: UIView
{
    let imageView = UIImageView()
    let titleLabel = UILabel()
    let captionLabel = UILabel()
    fileprivate let spacerView = UIView()
    let buyButton = UIButton()
    
    override init(frame: CGRect)
    {
        super.init(frame: frame)
        
        imageView.contentMode = .scaleAspectFill
        addSubview(imageView)
        
        titleLabel.font = UIFont.preferredFont(forTextStyle: .title1)
        titleLabel.adjustsFontForContentSizeCategory = true
        addSubview(titleLabel)
        
        captionLabel.font = UIFont.preferredFont(forTextStyle: .caption1)
        captionLabel.adjustsFontForContentSizeCategory = true
        captionLabel.numberOfLines = 0
        addSubview(captionLabel)
        
        addSubview(spacerView)
        
        buyButton.setTitle("Buy Now", for: .normal)
        buyButton.setTitleColor(.white, for: .normal)
        buyButton.backgroundColor = .red
        addSubview(buyButton)
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        imageView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        imageView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        imageView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: Constants.imageHeightRatio).isActive = true
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: Constants.inset).isActive = true
        titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -Constants.inset).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: Constants.inset).isActive = true
        
        captionLabel.translatesAutoresizingMaskIntoConstraints = false
        captionLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: Constants.inset).isActive = true
        captionLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -Constants.inset).isActive = true
        captionLabel.bottomAnchor.constraint(equalTo: spacerView.topAnchor, constant: -Constants.inset).isActive = true
        captionLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: Constants.inset).isActive = true
        
        spacerView.translatesAutoresizingMaskIntoConstraints = false
        spacerView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        spacerView.bottomAnchor.constraint(equalTo: buyButton.topAnchor).isActive = true
        spacerView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        
        buyButton.translatesAutoresizingMaskIntoConstraints = false
        buyButton.heightAnchor.constraint(equalToConstant: Constants.buttonHeight).isActive = true
        buyButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -Constants.inset).isActive = true
        buyButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -Constants.inset).isActive = true
        buyButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: Constants.inset).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder)
    {
        fatalError("init(coder:) has not been implemented")
    }
    
    

}
