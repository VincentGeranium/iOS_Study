//
//  ViewController.swift
//  CGRectCGSizeAndCGPointExample
//
//  Created by 김광준 on 2021/05/13.
//

import UIKit

class ViewController: UIViewController {
    
    public let imageSize: CGFloat = 100
    
    private let pinkRectImageView: UIImageView = {
        let imageView: UIImageView = UIImageView()
        imageView.backgroundColor = .systemPink
        imageView.layer.masksToBounds = true
        imageView.layer.cornerRadius = 3
        return imageView
    }()
    
    private let blueRectImageView: UIImageView = {
        let imageView: UIImageView = UIImageView()
        imageView.backgroundColor = .systemBlue
        imageView.layer.masksToBounds = true
        imageView.layer.cornerRadius = 3
        return imageView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        print("View Did Load")
        self.view.backgroundColor = .systemBackground
        addSubViews()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        setupImageViewUsedByCGRect()
        setupImageViewUsedByCGRectCGPointCGSize()

    }
    
    private func addSubViews() {
        self.view.addSubview(pinkRectImageView)
        self.view.addSubview(blueRectImageView)
    }
    
    private func setupImageViewUsedByCGRect() {
        
        pinkRectImageView.frame = CGRect(x: (view.width - imageSize) / 2, y: view.safeAreaInsets.top + 10, width: imageSize, height: imageSize)
    }
    
    private func setupImageViewUsedByCGRectCGPointCGSize() {
        blueRectImageView.frame = CGRect(origin: CGPoint(x: (view.width - imageSize) / 2, y: pinkRectImageView.bottom + 10), size: CGSize(width: imageSize, height: imageSize))
    }
}

