//
//  WelcomeViewController.swift
//  Utils
//
//  Created by Jesús Armando Cáceres Vilchez on 18/8/23.
//

import UIKit

class WelcomeViewController: UIViewController {

    override func loadView() {
        let customView = Views()
        customView.navigationController = navigationController
        self.view = customView

    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Welcome to Utils Resources"
    }
}

