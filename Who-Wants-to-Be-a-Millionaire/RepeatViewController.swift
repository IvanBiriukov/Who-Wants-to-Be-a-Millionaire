//
//  RepeatViewController.swift
//  Who-Wants-to-Be-a-Millionaire
//
//  Created by Ildar Garifullin on 05/02/2023.
//

import UIKit

class RepeatViewController: UIViewController {
    
    private let backgroundImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Frame 1")
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
    }()
    
    private let gameIconImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Image 1")
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
    }()
    
    private let infoLoseLabel: UILabel = {
        let label = UILabel()
        label.text = "You losed on {attempt} attempt"
        label.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        label.font = UIFont(name: "Roboto-Medium", size: 24)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private let loseLabel: UILabel = {
        let label = UILabel()
        label.text = "LOSE"
        label.textColor = #colorLiteral(red: 0.9805099368, green: 0.4752033353, blue: 0.1816203296, alpha: 1)
        label.font = UIFont(name: "Syne-Regular", size: 50)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    var labelsStackView = UIStackView()
    
    private let playAgainButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = #colorLiteral(red: 0.2039215686, green: 0.7215686275, blue: 0.2274509804, alpha: 1)
        button.layer.cornerRadius = 20
        button.setTitle("PLAY AGAIN", for: .normal)
        button.titleLabel?.font = UIFont(name: "Roboto-Medium", size: 36)
        button.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        button.addTarget(self, action: #selector(playAgainButtonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        setConstraints()
    }
    
    private func setupViews() {
        view.addSubview(backgroundImage)
        
        labelsStackView = UIStackView(
            arrangedSubviews: [gameIconImage, infoLoseLabel, loseLabel],
            axis: .vertical,
            spacing: 10)
        
        view.addSubview(labelsStackView)
        
        view.addSubview(playAgainButton)
    }
    
    @objc private func playAgainButtonTapped() {
        print("playAgainButtonTapped")
    }
    
    private func setConstraints() {
        
        NSLayoutConstraint.activate([
            backgroundImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            backgroundImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            backgroundImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            backgroundImage.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0)
        ])
        
        NSLayoutConstraint.activate([
            labelsStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            labelsStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            labelsStackView.heightAnchor.constraint(equalToConstant: 300)
        ])
        
        NSLayoutConstraint.activate([
            playAgainButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 62),
            playAgainButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -80),
            playAgainButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -62),
            playAgainButton.heightAnchor.constraint(equalToConstant: 100)
        ])
    }
}
