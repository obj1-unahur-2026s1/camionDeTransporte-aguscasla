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
    var cantidadLadrillos = 4

    method agregarLadrillos(unaCantidadLadrillos) {
        cantidadLadrillos += unaCantidadLadrillos
    }

    method quitarLadrillos(unaCantidadLadrillos) {
        cantidadLadrillos -= unaCantidadLadrillos
    }

    method peso() = ladrillo.peso() * cantidadLadrillos
    method nivelPeligrosidad() = 2 
}

object arenaGranel {
    var peso = 12

    method agregarPeso(unPeso) {
        peso += unPeso
    }

    method eliminarPeso(unPeso) {
        peso -= unPeso
    }

    method peso() = peso 
    method nivelPeligrosidad() = 1 
}

object bateriaAntiaerea {
    var estaCargado = false

    method cargarMisiles() {
        estaCargado = not(estaCargado)
    }

    method descargarMisiles() {
        estaCargado = not(estaCargado)
    }

    method peso() {
        if (estaCargado){
            return 300
        }
        else{
            return 200
        }
    }

    method nivelPeligrosidad() {
        if (estaCargado){
            return 100
        }
        else{
            return 0
        }
    }
}

object contenedorPortuario {
    const cosasCargadas = []

    method cargar(unaCosa) {
        cosasCargadas.add(unaCosa)
    }

    method descargar(unaCosa) {
        cosasCargadas.remove(unaCosa)
    }

    method nivelPeligrosidad() {
        if (cosasCargadas.isEmpty()){
            return 0
        }
        return cosasCargadas.max({cosa => cosa.nivelPeligrosidad()})
    }

    method peso() = 100 + cosasCargadas.sum({cosa => cosa.peso()}) 
}

object residuosRadioctivos {
    var peso = 850

    method agregarPeso(unPeso) {
        peso += unPeso
    }

    method eliminarPeso(unPeso) {
        peso -= unPeso
    }


    method nivelPeligrosidad() = 200
    method peso() = peso 
}

object embalajeDeSeguridad {
    var cosaEmbalada = bumblebee

    method embalarUnaCosa(unaCosa) {
        cosaEmbalada = unaCosa
    }

    method peso() = cosaEmbalada.peso()
    method nivelPeligrosidad() = cosaEmbalada.nivelPeligrosidad() / 2
}