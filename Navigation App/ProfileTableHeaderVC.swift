//
//  ProfileTableHeaderView.swift
//  NavigationApp
//
//  Created by Юлия Кагирова on 26.03.2023.
//

import UIKit

class ProfileTableHeaderVC: UIViewController {
    let header: ProfileHeaderView = {
        var header = ProfileHeaderView()
        header.translatesAutoresizingMaskIntoConstraints = false
        return header
    }()
    var posts = Source.makePost()
    let tableViewPost: UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.backgroundColor = .white
        tableView.register(PhotosTableViewCell.self, forCellReuseIdentifier: PhotosTableViewCell.id)
        tableView.register(PostTableViewCell.self, forCellReuseIdentifier: PostTableViewCell.id)
        tableView.separatorStyle = .singleLine
        tableView.separatorInset = .init(top: 20, left: 16, bottom: 20, right: 16)
        tableView.separatorColor = .gray
        return tableView
    }()
        override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupUI()
        setupTableViewPost()
        tableViewPost.dataSource = self
        tableViewPost.delegate = self
    }
    
    func setupUI() {
        view.addSubview(header)
        NSLayoutConstraint.activate([
            header.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            header.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            header.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            header.heightAnchor.constraint(equalToConstant: 250)
        ])
    }
    
    func setupTableViewPost() {
        view.addSubview(tableViewPost)
        NSLayoutConstraint.activate([
            tableViewPost.topAnchor.constraint(equalTo: header.bottomAnchor),
            tableViewPost.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            tableViewPost.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            tableViewPost.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
        ])
    }
}

extension ProfileTableHeaderVC: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        UITableView.automaticDimension
    }
}
extension ProfileTableHeaderVC: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        posts.count
    }
   
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: PhotosTableViewCell.id, for: indexPath) as? PhotosTableViewCell
            else { fatalError() }
            return cell
        } else {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: PostTableViewCell.id, for: indexPath) as? PostTableViewCell
            else { fatalError() }
            cell.configure(posts: posts[indexPath.row - 1])
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.section {
        case 0:
            tableView.deselectRow(at: indexPath, animated: false)
            navigationController?.pushViewController(PhotosVC(), animated: true)
        default:
            assertionFailure("no registered section")
        }
    }
}
