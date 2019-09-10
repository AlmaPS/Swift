//
//  ViewController.swift
//  PO.ALtablas
//
//  Created by 2020-1 on 9/4/19.
//  Copyright © 2019 2020-1. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
   
    var alumnos: [Alumno] = [
        Alumno(nombre:"Juan", promedio: 8.5, foto: "IM1", edad:20),
        Alumno(nombre: "Armin",promedio:7.0,foto:"IM2", edad:19)
    ]
    
    @IBOutlet weak var tablita: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return alumnos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "celdas", for: indexPath) as! AlumnoTableViewCell
      
        cell.nombre.text = alumnos[indexPath.row].nombre
        cell.edad.text = "\(alumnos[indexPath.row].edad)"
        cell.promedio.text = "\(alumnos[indexPath.row].promedio)"
        cell.foto.image = UIImage(named: alumnos[indexPath.row].foto)
        
        return cell
    }
   
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath)->CGFloat{
        return 100.0
    
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let segundaVista = segue.destination as! SecondViewController
        
        let myIndexPath = tablita.indexPathForSelectedRow
        segundaVista.alumno = alumnos[(myIndexPath?.row)!]
        
    }
}


