//
//  ViewController.swift
//  introToNetworkingHW
//
//  Created by Consultant on 11/8/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {
    func dismissViewController(text: String?) {
        
        self.dismiss(animated: true, completion: nil)
    }
    

    var tableView: UITableView?
    

    lazy var stockImageView: UIImageView = {
        let imageView = UIImageView(frame: .zero)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.backgroundColor = .black
        imageView.layer.cornerRadius = 10.0
        return imageView
        

        
    }()
    lazy var stockLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "default"
        
        return label
        
    }()
    
    init() {
        super.init(nibName: nil, bundle: nil)
        self.setUpUI()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    private func setUpUI() {
        self.view.backgroundColor = .white
        self.title = "Picsum"
        
        let table = UITableView(frame: .zero)
        table.translatesAutoresizingMaskIntoConstraints = false
        table.backgroundColor = .black
        table.dataSource = self
        table.delegate = self
     
        table.register(CellViewController.self, forCellReuseIdentifier: "ProgCell")
        
     
        self.view.addSubview(table)
        
        table.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 8).isActive = true
        table.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 8).isActive = true
        table.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -8).isActive = true
        table.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: -8).isActive = true

        
        
        self.tableView = table
        
    }
    

    
    


}


extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = CellViewController()

        
        cell.configure()
        
        
        return cell
        
        
    }
}
