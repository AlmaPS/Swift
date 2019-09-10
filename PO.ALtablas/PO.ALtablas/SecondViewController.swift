import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var nombre: UILabel!
    @IBOutlet weak var edad: UILabel!
    @IBOutlet weak var promedio: UILabel!
    @IBOutlet weak var foto: UIImageView!
    var alumno: Alumno!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        foto.image = UIImage(named: alumno.foto)
        nombre.text = alumno.nombre
        promedio.text = "\(alumno.promedio)"
        edad.text = "\(alumno.edad)"
    }
    @IBAction func cerrar(_ sender: UIButton){
        dismiss(animated: true, completion: nil)
    }
}
