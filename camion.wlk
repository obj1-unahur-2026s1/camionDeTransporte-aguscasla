// push, test

object camion {
    const cosasCargadas = []
    method tara() = 1000

    method cargar(unaCosa) {
        cosasCargadas.add(unaCosa)
    }

    method descargar(unaCosa) {
        cosasCargadas.remove(unaCosa)
    }

    method pesoDeLaCarga() = cosasCargadas.sum({cosa => cosa.peso()}) //

    method elPesoDeLasCosasSonPares() = cosasCargadas.all({cosa => cosa.peso().even()}) //

    method algunaCosaPesa(unPeso) = cosasCargadas.any({cosa => cosa.peso() == unPeso}) //

    method primerCosaPeligrosa(nivelPeligrosidad) = cosasCargadas.find({cosa => cosa.nivelPeligrosidad() == nivelPeligrosidad})

    method tienenPeligrosidadMasAltaDe(nivelPeligrosidad) = cosasCargadas.filter({cosa => cosa.nivelPeligrosidad() > nivelPeligrosidad})

    method esMasPeligrosoQueUnaCosa(unaCosa) = cosasCargadas.filter({cosa => cosa.nivelPeligrosidad() > unaCosa.nivelPeligrosidad()})

    method estaExcedido() = self.peso() > 2500

    method ningunObjetoEsMasPeligrosoDe(nivelPeligrosidad) = cosasCargadas.all({cosa => cosa.nivelPeligrosidad() < nivelPeligrosidad})

    method puedeCircularEnRuta(nivelPeligrosidad) {
        return not(self.estaExcedido()) && self.ningunObjetoEsMasPeligrosoDe(nivelPeligrosidad)
    }

    method cosaMasPesada() = cosasCargadas.max({cosa => cosa.peso()}) 
    method algunaCosaPesaEntre(minimo, maximo) = cosasCargadas.any({cosa => cosa.peso().between(minimo, maximo)})

    method peso() = self.tara() + self.pesoDeLaCarga()
}