//
//  ViewController.swift
//  HistoryProject
//
//  Created by Özge Poyraz on 10.04.2026.
//
import UIKit
final class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .pastelPink
        
        let card = CenterCardView(
            text: "History Aktarımı için Deneme Projesi"
        )
        
        card.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(card)
        
        NSLayoutConstraint.activate([
            card.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            card.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            card.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32),
            card.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -32),
        ])
    }
}
