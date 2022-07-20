//
//  View.swift
//  MVC
//
//  Created by 유정주 on 2022/07/20.
//

import UIKit

class View: UIView {
    
    //MARK: - Views
    private var titleLabel: UILabel!
    private var nameLabel: UILabel!
    var nextButton: UIButton!
    
    //MARK: - Init
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    //MARK: - Methods
    func changeName(name: String) {
        nameLabel.text = name
    }
    
    //MARK: - Setup
    private func setup() {
        self.backgroundColor = .white
        
        setupTitleLabel()
        setupNameLabel()
        setupNextButton()
    }
    
    private func setupTitleLabel() {
        titleLabel = UILabel()
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        titleLabel.text = "MVC 프로젝트"
        self.addSubview(titleLabel)
        
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
            titleLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 20)
        ])
    }
    
    private func setupNameLabel() {
        nameLabel = UILabel()
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        nameLabel.text = "NAME"
        self.addSubview(nameLabel)
        
        NSLayoutConstraint.activate([
            nameLabel.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
            nameLabel.centerYAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerYAnchor)
        ])
    }
    
    private func setupNextButton() {
        nextButton = UIButton()
        nextButton.translatesAutoresizingMaskIntoConstraints = false

        nextButton.setTitle("NEXT", for: .normal)
        nextButton.setTitleColor(.systemBlue, for: .normal)
        self.addSubview(nextButton)
        
        NSLayoutConstraint.activate([
            nextButton.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
            nextButton.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -80)
        ])
    }
}
