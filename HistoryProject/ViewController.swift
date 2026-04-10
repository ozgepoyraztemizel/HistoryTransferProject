//
//  ViewController.swift
//  HistoryProject
//
//  Created by Özge Poyraz on 10.04.2026.
//

import UIKit

final class ViewController: UIViewController {

    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "History Aktarımı için Deneme Projesi"
        label.textAlignment = .center
        label.numberOfLines = 0
        
        // Pastel mor yazı
        label.textColor = UIColor(
            red: 0.58,
            green: 0.47,
            blue: 0.76,
            alpha: 1.0
        )
        
        label.font = UIFont.systemFont(ofSize: 22, weight: .semibold)
        return label
    }()
    
    private let containerView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        
        // Yuvarlak köşe
        view.layer.cornerRadius = 20
        
        // Gölge
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOpacity = 0.08
        view.layer.shadowOffset = CGSize(width: 0, height: 4)
        view.layer.shadowRadius = 10
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Pastel pembe arka plan
        view.backgroundColor = UIColor(
            red: 0.98,
            green: 0.88,
            blue: 0.92,
            alpha: 1.0
        )
        
        setupLayout()
    }
    
    private func setupLayout() {
        view.addSubview(containerView)
        containerView.addSubview(titleLabel)
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            // Container ortada
            containerView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            containerView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            containerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32),
            containerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -32),
            
            // Label padding
            titleLabel.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 24),
            titleLabel.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -24),
            titleLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 16),
            titleLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -16),
        ])
    }
}
