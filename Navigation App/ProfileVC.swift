//
//  ProfileTableHeaderView.swift
//  NavigationApp
//
//  Created by Юлия Кагирова on 26.03.2023.
//

import UIKit

class ProfileVC: UIViewController {
    let header: ProfileHeaderView = {
        var header = ProfileHeaderView()
        header.translatesAutoresizingMaskIntoConstraints = false
        return header
    }()
    let photoLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        label.textColor = .black
        label.text = "Photos"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    let arrowButton: UIButton = {
        let icon =  UIButton()
        icon.setBackgroundImage(UIImage(systemName: "arrow.right"), for: .normal)
        icon.addTarget(nil, action: #selector(arrowButtonPressed), for: .touchUpInside)
        icon.translatesAutoresizingMaskIntoConstraints = false
        return icon
    }()
    var posts = Source.makePost()
    let tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.backgroundColor = .white
        tableView.register(PostTableViewCell.self, forCellReuseIdentifier: PostTableViewCell.id)
        tableView.register(PhotosTableViewCell.self, forCellReuseIdentifier: PhotosTableViewCell.id)
        tableView.separatorStyle = .singleLine
        tableView.separatorInset = .init(top: 20, left: 16, bottom: 20, right: 16)
        tableView.separatorColor = .gray
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupUI()
        setupTableView()
        tableView.dataSource = self
        tableView.delegate = self
    }
    func setupUI() {
        view.addSubview(header)
        view.addSubview(photoLabel)
        view.addSubview(arrowButton)
        NSLayoutConstraint.activate([
            header.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            header.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            header.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            header.heightAnchor.constraint(equalToConstant: 250),
            
            photoLabel.topAnchor.constraint(equalTo: header.bottomAnchor, constant: 12),
            photoLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 12),
            
            arrowButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -12),
            arrowButton.centerYAnchor.constraint(equalTo: photoLabel.centerYAnchor),
            arrowButton.heightAnchor.constraint(equalToConstant: 32),
            arrowButton.widthAnchor.constraint(equalToConstant: 32),
        ])
    }
    func setupTableView() {
        view.addSubview(tableView)
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: photoLabel.bottomAnchor, constant: 12),
            tableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
        ])
    }
    @objc func arrowButtonPressed(sender: UIButton) {
        let photosVC = PhotosVC()
        self.navigationController?.pushViewController(photosVC, animated: true)
    }
}
extension ProfileVC: UITableViewDelegate {
}
extension ProfileVC: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        posts.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: PostTableViewCell.id, for: indexPath) as? PostTableViewCell
        else { fatalError() }
        cell.configure(posts: posts[indexPath.row])
        return cell
    }
}
