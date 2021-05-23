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
    
    private let grayRectImageView: UIImageView = {
        let imageView: UIImageView = UIImageView()
        imageView.backgroundColor = .systemGray
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
        setupPinkImageView()
        setupBlueImageView()
        setupGrayImageView()

    }
    
    private func addSubViews() {
        self.view.addSubview(pinkRectImageView)
        self.view.addSubview(blueRectImageView)
        self.view.addSubview(grayRectImageView)
    }
    
    private func setupPinkImageView() {
        
        pinkRectImageView.frame = CGRect(x: (view.width - imageSize) / 2, y: view.safeAreaInsets.top + 10, width: imageSize, height: imageSize)
    }
    
    private func setupBlueImageView() {
        blueRectImageView.frame = CGRect(origin: CGPoint(x: (view.width - imageSize) / 2, y: pinkRectImageView.bottom + 10), size: CGSize(width: imageSize, height: imageSize))
    }
    
    private func setupGrayImageView() {
        grayRectImageView.frame = CGRect(x: (view.width - imageSize) / 2, y: blueRectImageView.bottom + 10, width: imageSize, height: imageSize)
    }

}

