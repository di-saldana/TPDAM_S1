import UIKit

//var greeting = "Hello, playground"

// Ejercicio 1
// Al igual que Int() convierte al tipo entero, Bool() puede convertir a booleano, por ejemplo a partir de las cadenas "true" y "false". Supongamos que tienes una constante let valor="true". Declara una variable b como de tipo booleano y asígnale valor pero convertida a booleano.

let valor = "true"
var b: Bool
b = (valor == "true")


// Ejercicio 2
// Declara una variable "mensaje" como un String opcional. Usando el if let escribe código que haga que si es distinta a nil la imprima, pero si es nil imprima "está vacía". Ten en cuenta que en Swift las llaves son obligatorias siempre en los condicionales aunque solo haya una instrucción.

let mensaje: String? = "Hola"
if let valorDesenvuelto = mensaje {
    print("Mensaje es: \(valorDesenvuelto)")
} else {
    print("Está vacía")
}


// Ejercicio 3
// Cambia este ejemplo por un bucle for en el que se itere usando una variable i con la posición del elemento en la lista, lista[i]. El número de elementos de la lista lo puedes obtener en su propiedad count

// var bizcocho = ["huevos", "leche", "harina"]
// for ingrediente in bizcocho {
//   print(ingrediente)
// }

var bizcocho = ["huevos", "leche", "harina"]
let count = bizcocho.count

for i in 0..<count {
    print(i, bizcocho[i])
}


// Ejercicio 4
// Implementa una función filtrar a la que le pases una lista de valores Int y un valor máximo y devuelva una nueva lista con todos los valores que no superan este máximo. El primer parámetro no debe tener etiqueta y el segundo max. Por ejemplo esto devolvería la lista [4 5] (cuidado, swift tiene una función filter que hace esto, pero evidentemente no puedes usarla para este ejercicio)

func filtrar(_ lista: [Int], max: Int) -> [Int] {
    var min = [Int]()
    for i in lista {
        if i <= max {
            min.append(i)
        }
    }
    return min
}

var lista = [10, 4, 5, 7]
var f = filtrar(lista, max:5)
print(f) // [4,5]


// Ejercicio 5
// Crea una clase Persona con un nombre, una edad y una propiedad computable booleana adulto que indique si tiene 18 años o más. Comprueba que el siguiente código funciona con tu clase:

class Persona {
    let nombre: String
    let edad: Int
    
    init(nombre: String, edad: Int) {
        self.nombre = nombre
        self.edad = edad
    }
    
    var adulto: Bool {
        return edad >= 18
    }
}

var p = Persona(nombre:"Pepe", edad:20)
//debería imprimir ADULTO! ya que la edad de la persona es >= 18
if p.adulto {
  print("ADULTO!")
}


// Ejercicio 6
// Crea un tipo enumerado DiaSemana para los días de la semana (lunes, martes,...). Su rawValue será Int. Añádele un método cuantoFalta que devuelva el número de días que faltan para el fin de semana o bien 0 si es sábado o domingo. Al probarlo debería ser algo de este estilo:

enum DiaSemana: Int {
    case lunes, martes, miercoles, jueves, viernes, sabado, domingo
    
    func cuantoFalta() -> Int {
        if self == .sabado || self == .domingo {
            return 0
        } else {
            return DiaSemana.sabado.rawValue - self.rawValue
        }
    }
}

var dia = DiaSemana.lunes
print(dia.rawValue) //0
dia = .viernes
print(dia.cuantoFalta()) //1
