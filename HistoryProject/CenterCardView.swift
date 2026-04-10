//
//  CenterCardView.swift
//  HistoryProject
//
//  Created by Özge Poyraz on 10.04.2026.
//

import UIKit

final class CenterCardView: UIView {

    private let label: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.numberOfLines = 0
        label.textColor = .pastelPurple
        label.font = UIFont.systemFont(ofSize: 22, weight: .semibold)
        return label
    }()

    init(text: String) {
        super.init(frame: .zero)
        setupUI()
        label.text = text
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupUI() {
        backgroundColor = .white
        layer.cornerRadius = 20
        
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.08
        layer.shadowOffset = CGSize(width: 0, height: 4)
        layer.shadowRadius = 10

        addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: topAnchor, constant: 24),
            label.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -24),
            label.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            label.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16)
        ])
    }
}

extension UIColor {
    
    static let pastelPink = UIColor(
        red: 0.98,
        green: 0.88,
        blue: 0.92,
        alpha: 1.0
    )
    
    static let pastelPurple = UIColor(
        red: 0.58,
        green: 0.47,
        blue: 0.76,
        alpha: 1.0
    )
}
