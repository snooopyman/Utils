//
//  Views.swift
//  Utils
//
//  Created by Jesús Armando Cáceres Vilchez on 23/8/23.
//

import UIKit

public class Views: UIView {

    private let button = UIButton()
    private let label = UILabel()
    private let square = UIView()
    private var circle =  UIView()
    private let image : UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "snooopyman")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    public var navigationController: UINavigationController?

    private let stackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.spacing = 20
        return stack
    }()

    override init(frame: CGRect) {
        super.init(frame: .zero)
        configureVStack()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }


    private func configureButton() {
        addSubview(button)

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
        addSubview(label)

        label.text = "Created by Snooopyman"
        label.textColor = .red
        label.font = UIFont.boldSystemFont(ofSize: 25)

        label.translatesAutoresizingMaskIntoConstraints = false
    }

    private func configureSquare() {
        addSubview(square)

        square.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        square.backgroundColor = .blue
        square.translatesAutoresizingMaskIntoConstraints = false
    }

    private func configureCircle() {
        addSubview(circle)

        circle.backgroundColor = .black
        circle.layer.cornerRadius = 50
        circle.layer.borderColor = UIColor.yellow.cgColor
        circle.layer.borderWidth = 1.0
        circle.contentMode = .scaleAspectFill
        circle.translatesAutoresizingMaskIntoConstraints = false
        circle.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.26).isActive = true
        circle.heightAnchor.constraint(equalTo: circle.widthAnchor).isActive = true
        circle.centerXAnchor.constraint(equalTo: stackView.centerXAnchor).isActive = true

    }

    private func configureImage() {
        addSubview(image)
        image.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
    }

    private func configureVStack() {
        addSubview(stackView)
        configureLabel()
        configureSquare()
        configureCircle()
        configureButton()
        configureImage()
        stackView.addArrangedSubview(label)
        stackView.addArrangedSubview(square)
        stackView.addArrangedSubview(circle)
        stackView.addArrangedSubview(image)
        stackView.addArrangedSubview(button)
        stackView.distribution = .fillEqually
        //stackView.alignment = .center

        stackView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 30).isActive = true
        stackView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 50).isActive = true
        stackView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -50).isActive = true
        stackView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
    }

    private func nextScreen(controller: UIViewController) {
        let nextScreen = controller
        navigationController?.pushViewController(nextScreen, animated: true)
    }
}
