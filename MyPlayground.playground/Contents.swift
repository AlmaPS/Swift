import UIKit

protocol curso{
    func hablarIngles()
    
}

class Herrero: curso{
    func hablarIngles(){
        print("padre hablando ingles")
    }
    
}

class Alumno: Herrero{
    override func hablarIngles() {
        print("como gringo de L.A.")
    }
    
}
class IngEE: curso{
    func hablarIngles(){
    print("IEE habla ingles")
}
}

class IC{
    
}

let octavio = Alumno()
let joss = IngEE()
let armin = Herrero()
let jerry = IC()

func entrarAlAntro( personaHablaIngles: curso){
    personaHablaIngles.hablarIngles()
}

entrarAlAntro(personaHablaIngles: armin)
