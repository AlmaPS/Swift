//
//  ViewController.swift
//  Copia.TablasPO
//
//  Created by 2020-1 on 9/5/19.
//  Copyright © 2019 2020-1. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var carreras = ["QFB", "IQ", "IQM", "Q", "QA"]
    var imagenes = ["IQFB", "IIQ", "IIQM", "IQQ", "IQA"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return carreras.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "carreras", for: indexPath)
        
        cell.textLabel!.text = carreras[indexPath.row]
        cell.imageView?.image = UIImage(named: imagenes[indexPath.row])
        
        if indexPath.row % 2 == 0 {
            cell.backgroundColor = .white
            
        }else{
            cell.backgroundColor = .blue
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath)->CGFloat{
        return 95.0
    }
}

