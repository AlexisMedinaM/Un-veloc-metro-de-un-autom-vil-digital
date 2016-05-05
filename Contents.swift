//: Playground - noun: a place where people can play

import UIKit

enum Velocidades: Int {
    case Apagado = 0
    case VelocidadBaja = 20
    case VelocidadMedia = 50
    case VelocidadAlta = 120
    
    init(velocidadInicial: Velocidades){
        self = velocidadInicial
    }
    
}

class Auto {
    var velocidad: Velocidades
    
    init(){
        velocidad = Velocidades(velocidadInicial: .Apagado)
    }
    
    func cambioDeVelocidad() -> (actual: Int, velocidadEnCadena: String) {
        switch velocidad {
        case .Apagado:
            velocidad = .VelocidadBaja
            return (Velocidades.Apagado.rawValue, "Apagado")
        case .VelocidadBaja:
            velocidad = .VelocidadMedia
            return (Velocidades.VelocidadBaja.rawValue, "Velocidad Baja")
        case .VelocidadMedia:
            velocidad = .VelocidadAlta
            return (Velocidades.VelocidadMedia.rawValue, "Velocidad Media")
        case .VelocidadAlta:
            velocidad = .VelocidadMedia
            return (Velocidades.VelocidadAlta.rawValue, "Velocidad Alta")
        }
    }

}


let auto = Auto()
for i in 0..<20 {
    print("\(auto.cambioDeVelocidad())")
}

