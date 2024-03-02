//
//  SecondViewController.swift
//  NavigationTask
//
//  Created by yousef mandani on 29/02/2024.
//

import UIKit
import SnapKit

class SecondViewController: UIViewController {

    var receivedData: String? = "Welcome to details view"
    let label = UILabel()
    let container = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        title = "Details VC"
        view.backgroundColor = .systemIndigo
        
        addSubviews()
        setupUI()
        setupLayout()
    }
    
    func setupUI(){
        label.text = receivedData
        label.textColor = .systemRed
        label.font = .systemFont(ofSize: 30, weight: .heavy)
        
        container.backgroundColor = .purple
    }

    func setupLayout(){
        container.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.width.equalToSuperview()
            make.height.equalTo(100)
        }
        label.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
    }
    
    func addSubviews(){
        view.addSubview(container)
        container.addSubview(label)
    }
}
