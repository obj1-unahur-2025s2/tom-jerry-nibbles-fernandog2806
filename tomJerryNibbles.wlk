object tom {
  var energia = 50
  var ultimoRatonComido = null
  var metrosRecorridos = 0
  
  method energia() = energia
  
  method ultimoRatonComido() = ultimoRatonComido
  
  method metrosRecorridos() = metrosRecorridos
  
  method correr(cantMetros) {
    energia -= cantMetros / 2
    metrosRecorridos = cantMetros
  }
  
  method comer(raton) {
    energia += 12 + raton.peso()
    ultimoRatonComido = raton
  }
  
  method velocidadMaxima() = 5 + (energia / 10)
  
  method puedeCazarALaDistancia(unaDistancia) = (unaDistancia / 2) <= energia
  
  method cazarASiPuede(unRaton, unaDistancia) {
    if (self.puedeCazarALaDistancia(unaDistancia)) self.cazarRatonADistancia(
        unRaton,
        unaDistancia
      )
  }
  
  method cazarRatonADistancia(unRaton, unaDistancia) {
    self.correr(unaDistancia)
    self.comer(unRaton)
  }
}

object jerry {
  var edad = 2
  
  method peso() = edad * 20
  
  method cumplirAño() {
    edad += 1
  }
}

object nibbles {
  var edad = 2
  
  method peso() = 35
  
  method cumplirAño() {
    edad += 1
  }
}

object ratatta {
  var altura = 10
  
  method peso() = altura * 0.2
  
  method crecer(centimetros) {
    altura += centimetros
  }
}