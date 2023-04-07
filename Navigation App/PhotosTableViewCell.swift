//
//  PhotosTableViewCell.swift
//  Navigation App
//
//  Created by Юлия Кагирова on 30.03.2023.
//

import UIKit

class PhotosTableViewCell: UITableViewCell {
    static let id = "PhotosTableViewCell"
    var image: UIImageView = {
        let image = UIImageView()
        image.layer.cornerRadius = 6
        return image
    }()
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setup()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func setup() {
        contentView.addSubview(image)
        image.clipsToBounds = true
        image.contentMode = .scaleAspectFill
        NSLayoutConstraint.activate([
            image.widthAnchor.constraint(equalToConstant: 64),
            image.heightAnchor.constraint(equalToConstant: 64),
            image.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 12),
            image.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12),
            image.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -12),
            image.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -12),
        ])
    }
    func configure(photo: Photo) {
        image.image = photo.image
    }
}
