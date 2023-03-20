//  ProfileHeaderView.swift
//  NavigationApp
//
//  Created by Юлия Кагирова on 14.03.2023.
//

import UIKit

final class ProfileHeaderView: UIView, UITextFieldDelegate {
    
    private let avatarImageView: UIImageView = {
        let view = UIImageView(image: UIImage(named: "cat"))
        view.layer.cornerRadius = 40
        view.layer.borderWidth = 3
        view.layer.borderColor = UIColor.white.cgColor
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let fullNameLabel: UILabel = {
        let label = UILabel()
        label.text = "Hipster Cat"
        label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let statusLabel: UILabel = {
        let label = UILabel()
        label.text = "Listening to music"
        label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        label.textColor = .gray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let statusTextField: UITextField = {
        let text = UITextField()
        text.placeholder = "Listening to music"
        text.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        text.textColor = .black
        text.layer.cornerRadius = 12
        text.layer.backgroundColor = UIColor.white.cgColor
        text.layer.borderWidth = 1
        text.layer.borderColor = UIColor.black.cgColor
        text.translatesAutoresizingMaskIntoConstraints = false
        let paddingView = UIView(frame: CGRectMake(0, 0, 14, 0))
        text.leftView = paddingView
        text.leftViewMode = UITextField.ViewMode.always
        return text
    }()
    
    private var statusText: String = ""
    
    private let setStatusButton: UIButton = {
        let button = UIButton()
        button.setTitle("Set status", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .blue
        button.titleLabel?.shadowOffset = CGSize(width: 4, height: 4)
        button.layer.shadowRadius = 4
        button.layer.cornerRadius = 4
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.7
        button.addTarget(self, action: #selector(buttonPressed), for: .editingChanged)
        button.addTarget(self, action: #selector(statusTextChanged), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var button: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemGreen
        button.layer.cornerRadius = 4
        button.setTitle("Новая кнопка", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    func setupUI() {
        backgroundColor = .systemGray3
        addSubview(avatarImageView)
        addSubview(fullNameLabel)
        addSubview(statusLabel)
        addSubview(statusTextField)
        addSubview(setStatusButton)
        addSubview(button)
        NSLayoutConstraint.activate([
            avatarImageView.topAnchor.constraint(equalTo: topAnchor, constant: 16),
            avatarImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            avatarImageView.heightAnchor.constraint(equalToConstant: 80),
            avatarImageView.widthAnchor.constraint(equalToConstant: 80),
            
            fullNameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 27),
            fullNameLabel.leftAnchor.constraint(equalTo: avatarImageView.rightAnchor, constant: 40),
            fullNameLabel.centerYAnchor.constraint(equalTo: avatarImageView.centerYAnchor, constant: -14),
            fullNameLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -90),
            fullNameLabel.bottomAnchor.constraint(equalTo: statusLabel.topAnchor, constant: -16),
            
            statusLabel.topAnchor.constraint(equalTo: fullNameLabel.bottomAnchor, constant: 16),
            statusLabel.leftAnchor.constraint(equalTo: avatarImageView.rightAnchor, constant: 40),
            statusLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -16),
            statusLabel.bottomAnchor.constraint(equalTo: statusTextField.topAnchor, constant: -16),
            
            statusTextField.heightAnchor.constraint(equalToConstant: 40),
            statusTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            statusTextField.topAnchor.constraint(equalTo: statusLabel.bottomAnchor, constant: 16),
            statusTextField.bottomAnchor.constraint(equalTo: setStatusButton.topAnchor, constant: -24),
            statusTextField.leftAnchor.constraint(equalTo: avatarImageView.rightAnchor, constant: 40),
            
            setStatusButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            setStatusButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            setStatusButton.topAnchor.constraint(equalTo: avatarImageView.bottomAnchor, constant: 78),
            setStatusButton.heightAnchor.constraint(equalToConstant: 50),
            
            button.trailingAnchor.constraint(equalTo: trailingAnchor),
            button.leadingAnchor.constraint(equalTo: leadingAnchor),
            button.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor)
        ])
    }
    
    @objc func buttonPressed(sender: UIButton) {
        print(statusText)
    }
    @objc func statusTextChanged(_textField: UITextField) {
        statusLabel.text! = statusTextField.text!
        print("Text changed \(statusLabel.text!)")
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}
