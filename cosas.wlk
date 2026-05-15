object cosas {
    
}

object knightRider {
    method peso() = 500
    method nivelPeligrosidad() = 10  
}

object bumblebee {
    var transformadoEn = "auto"

    method transformarseEn(transformacion) {
        if (transformacion == "auto" or transformacion == "robot"){
            transformadoEn = transformacion
        }
    }

    method nivelPeligrosidad() {
        if (self.transformadoEn() == "robot") {
            return 15
        }
        else{
            return 30
        }
    }

    method transformadoEn() = transformadoEn 
    method peso() = 800
     
}

object ladrillo {
    method peso() = 2 
}
object paqueteLadrillos {
    var _cantidadLadrillos = 4

    method agregarLadrillos(cantidadLadrillos) {
        _cantidadLadrillos += cantidadLadrillos
    }

    method quitarLadrillos(cantidadLadrillos) {
        _cantidadLadrillos -= cantidadLadrillos
    }

    method peso() = ladrillo.peso() * _cantidadLadrillos
    method nivelPeligrosidad() = 2 
}

