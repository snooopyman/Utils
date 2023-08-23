//
//  VerticalScrollViewController.swift
//  Utils
//
//  Created by Jesús Armando Cáceres Vilchez on 21/8/23.
//

import UIKit

class VerticalScrollViewController: UIViewController, UIScrollViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        let scrollView = UIScrollView(frame: view.bounds)
        scrollView.contentSize = CGSize(width: view.bounds.width, height: 1000)
        scrollView.backgroundColor = .white
        scrollView.delegate = self
        view.addSubview(scrollView)

        let contentView = UIView(frame: CGRect(x: 0, y: 0, width: scrollView.contentSize.width, height: scrollView.contentSize.height))
        contentView.backgroundColor = .lightGray
        scrollView.addSubview(contentView)
    }

    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if scrollView.contentOffset.y < 0 {
            scrollView.contentOffset.y = 0
        }
    }
}

