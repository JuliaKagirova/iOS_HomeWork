//  FeedViewController.swift
//  NavigationApp
//
//  Created by Юлия Кагирова on 03.03.2023.
//

import UIKit

class FeedVC: UIViewController {
    
    var post = Post(title: "Мой пост")
    private lazy var button1: UIButton = {
        let button1 = UIButton()
        button1.backgroundColor = .purple
        button1.layer.cornerRadius = 10
        button1.setTitle("Перейти на пост", for: .normal)
        button1.setTitleColor(.white, for: .normal)
        button1.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        button1.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        return button1
    }()
    private lazy var button2: UIButton = {
        let button2 = UIButton()
        button2.backgroundColor = .blue
        button2.layer.cornerRadius = 10
        button2.setTitle("Перейти на пост", for: .normal)
        button2.setTitleColor(.white, for: .normal)
        button2.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        button2.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        return button2
    }()
    private var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.clipsToBounds = true
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.alignment = .center
        stackView.spacing = 10
        return stackView
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemYellow
        view.addSubview(stackView)
        setupContraints()
        stackView.addArrangedSubview(self.button1)
        stackView.addArrangedSubview(self.button2)
    }
    
    @objc private func buttonAction() {
        let postViewController = PostVC()
        self.navigationController?.pushViewController(postViewController, animated: true)
        postViewController.titlePost = post.title
    }
    
    private func setupContraints() {
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo:  self.view.leadingAnchor, constant: 20),
            stackView.trailingAnchor.constraint(equalTo:  self.view.trailingAnchor, constant: -20),
            stackView.heightAnchor.constraint(equalToConstant: 50),
            stackView.bottomAnchor.constraint(equalTo:  self.view.bottomAnchor, constant: -16),
            stackView.topAnchor.constraint(equalTo:  self.view.topAnchor, constant: 16)
        ])
    }
}
