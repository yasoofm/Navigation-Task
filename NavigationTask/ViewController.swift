//
//  ViewController.swift
//  NavigationTask
//
//  Created by yousef mandani on 29/02/2024.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    let button = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .systemIndigo
        title = "First VC"
        
        addSubviews()
        setupUI()
        setupLayout()
        setupNavigationBar()
    }
    
    func setupUI(){
        button.setTitle("Show Details", for: .normal)
        button.backgroundColor = .systemRed
        button.layer.cornerRadius = 10
        button.addTarget(self, action: #selector(buttonPress), for: .touchUpInside)
        button.layer.shadowOffset = CGSize(width: 0, height: 10)
        button.layer.shadowColor = UIColor.black.cgColor
    }

    func setupLayout(){
        button.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.height.equalTo(45)
            make.width.equalTo(150)
        }
    }
    
    func addSubviews(){
        view.addSubview(button)
    }

    @objc func buttonPress(){
        let secondVC = SecondViewController()
        secondVC.receivedData = "Hello from first VC"
        navigationController?.pushViewController(secondVC, animated: true)
    }
    
    func setupNavigationBar(){
        let appearance = UINavigationBarAppearance()
        appearance.configureWithDefaultBackground()
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
    }
}

