//
//  PhotosTableViewCell.swift
//  Navigation App
//
//  Created by Юлия Кагирова on 30.03.2023.
//

import UIKit

class PhotosTableViewCell: UITableViewCell {
    
    static let id = "PhotosTableViewCell"
    
    var photoLabel: UILabel = {
        let label = UILabel()
        label.text = "Photos"
        label.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        label.textColor = UIColor.black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var arrowIcon: UIImageView = {
        let icon = UIImageView()
        icon.image = UIImage(named: "arrow")
        icon.translatesAutoresizingMaskIntoConstraints = false
        return icon
    }()
    var stackViewImage: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.alignment = .center
        stack.distribution = .fillEqually
        stack.spacing = 8
        return stack
    }()
    func getPreviewImage(index: Int) -> UIImageView {
        let preview = UIImageView()
        preview.translatesAutoresizingMaskIntoConstraints = false
        preview.image = Photos.shared.examples[index]
        preview.contentMode = .scaleAspectFill
        preview.layer.cornerRadius = 6
        preview.clipsToBounds = true
        return preview
    }
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(photoLabel)
        contentView.addSubview(arrowIcon)
        contentView.addSubview(stackViewImage)
        setupPreviews()
        setupConstraints()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupPreviews() {
        for ind in 0...3 {
            let image = getPreviewImage(index: ind)
            stackViewImage.addArrangedSubview(image)
            NSLayoutConstraint.activate([
                image.widthAnchor.constraint(greaterThanOrEqualToConstant: (contentView.frame.width - 24) / 4),
                image.heightAnchor.constraint(equalTo: image.widthAnchor, multiplier: 0.80)
            ])
        }
    }
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            photoLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 12),
            photoLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12),

            arrowIcon.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -12),
            arrowIcon.centerYAnchor.constraint(equalTo: photoLabel.centerYAnchor),
            arrowIcon.heightAnchor.constraint(equalToConstant: 20),
            arrowIcon.widthAnchor.constraint(equalToConstant: 20),

            stackViewImage.topAnchor.constraint(equalTo: photoLabel.bottomAnchor, constant: 12),
            stackViewImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12),
            stackViewImage.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -12),
            stackViewImage.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -12),
        ])
    }
}
 
