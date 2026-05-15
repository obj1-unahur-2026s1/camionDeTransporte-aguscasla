object camion {
    const cosasCargadas = []
    method tara() = 1000

    method cargar(unaCosa) {
        cosasCargadas.add(unaCosa)
    }

    method descargar(unaCosa) {
        cosasCargadas.remove(unaCosa)
    }

    method pesoDeLaCarga() = cosasCargadas.sum({cosa => cosa.peso()})

    method elPesoDeLasCosasSonPares() = true

    method algunaCosaPesa(unPeso) = null

    method primerCosaPeligrosa() = null

    method tienenPeligrosidadMasAltaDe(nivelPeligrosidad) = null

    method peso() = self.tara() + self.pesoDeLaCarga()
}