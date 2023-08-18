//
//  WelcomeViewController.swift
//  Utils
//
//  Created by Jesús Armando Cáceres Vilchez on 18/8/23.
//

import UIKit

class WelcomeViewController: UIViewController {

    private let button = UIButton()
    private let label = UILabel()
    private let square = UIView()
    private var circle =  UIView()
    private let stackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.spacing = 15
        return stack
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Welcome to Utils Resources"

        configureVStack()
    }

    private func configureButton() {
        view.addSubview(button)

        button.configuration = .filled()
        button.configuration?.baseBackgroundColor = .systemPink
        button.configuration?.title = "Next"

        let action = UIAction { [weak self] _ in
            self?.nextScreen(controller: TableVC())
        }
        button.addAction(action, for: .touchUpInside)


        button.translatesAutoresizingMaskIntoConstraints = false
    }

    private func configureLabel() {
        view.addSubview(label)

        label.text = "Created by Snooopyman"
        label.textColor = .red
        label.font = UIFont.boldSystemFont(ofSize: 25)

        label.translatesAutoresizingMaskIntoConstraints = false
    }

    private func configureSquare() {
        view.addSubview(square)

        square.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        square.backgroundColor = .blue
        square.translatesAutoresizingMaskIntoConstraints = false
    }

    private func configureCircle() {
        view.addSubview(circle)

        circle.backgroundColor = .black
        circle.layer.cornerRadius = 50
        circle.layer.borderColor = UIColor.yellow.cgColor
        circle.layer.borderWidth = 1.0
        circle.contentMode = .scaleAspectFill
        circle.translatesAutoresizingMaskIntoConstraints = false
        circle.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.26).isActive = true
        circle.heightAnchor.constraint(equalTo: circle.widthAnchor).isActive = true
        circle.centerXAnchor.constraint(equalTo: stackView.centerXAnchor).isActive = true

    }

    private func configureVStack() {
        view.addSubview(stackView)
        configureLabel()
        configureSquare()
        configureCircle()
        configureButton()
        stackView.addArrangedSubview(label)
        stackView.addArrangedSubview(square)
        stackView.addArrangedSubview(circle)
        stackView.addArrangedSubview(button)
        stackView.distribution = .fillEqually
        //stackView.alignment = .center

        stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30).isActive = true
        stackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 50).isActive = true
        stackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -50).isActive = true
        stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }

    private func nextScreen(controller: UIViewController) {
        let nextScreen = controller
        navigationController?.pushViewController(nextScreen, animated: true)
    }

}

