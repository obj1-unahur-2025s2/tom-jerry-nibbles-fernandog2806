object tom {
  var energia = 50
  
  method cazarRaton(unRaton) {
    energia += 12 + unRaton.peso()
  }
  
  method correr(cantMetros) {
    energia -= cantMetros / 2
  }
  
  method velocidadMaxima() = 5 + (energia / 10)
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
} // Inventar otro ratón// Inventar otro ratón