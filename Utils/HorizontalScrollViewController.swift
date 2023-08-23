//
//  HorizontalScrollViewController.swift
//  Utils
//
//  Created by Jesús Armando Cáceres Vilchez on 21/8/23.
//

import UIKit

class HorizontalScrollViewController: UIViewController, UIScrollViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        let scrollView = UIScrollView(frame: view.bounds)
        scrollView.contentSize = CGSize(width: 1000, height: view.bounds.height)
        scrollView.backgroundColor = .white
        scrollView.delegate = self
        scrollView.isPagingEnabled = true
        view.addSubview(scrollView)

        let contentView = UIView(frame: CGRect(x: 0, y: 0, width: scrollView.contentSize.width, height: scrollView.contentSize.height))
        contentView.backgroundColor = .lightGray
        scrollView.addSubview(contentView)
    }

    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if scrollView.contentOffset.x < 0 {
            scrollView.contentOffset.x = 0
        }
    }
}

