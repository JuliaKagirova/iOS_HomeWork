//  PostViewController.swift
//  NavigationApp
//
//  Created by Юлия Кагирова on 03.03.2023.
//

import UIKit

class PostViewController: UIViewController {

    var titlePost: String = "Anonymous"

    override func viewDidLoad() {
        super.viewDidLoad()
        let button = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(buttonPressed) )
        navigationItem.rightBarButtonItem = button
    }
    @objc func buttonPressed(_sender: UIButton) {
        let infoViewController = InfoViewController()
        infoViewController.modalTransitionStyle = .flipHorizontal
        infoViewController.modalPresentationStyle = .pageSheet
        present(infoViewController, animated: true)
    }
    func setupView() {
        self.view.backgroundColor = .lightGray
        self.navigationItem.title = titlePost
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
}
