import UIKit

//Ejercicios de Swift parte II

// Gestión de errores en Swift
    // Debe tener una longitud mínima de 8 caracteres
    // Debe contener al menos un carácter en máyúscula y uno en minúscula

enum ErrorPassword: Error {
    case errorLongitud(min: Int)
    case errorLowerUpper
}

func chequearPassword(_ password: String) throws -> Bool {

    if password.count < 8 {
        throw ErrorPassword.errorLongitud(min: password.count)
    }
    
    // Check for at least one uppercase and one lowercase character
    var tieneUppercase = false
    var tieneLowercase = false
    
    for character in password {
        if character.isUppercase {
            tieneUppercase = true
        } else if character.isLowercase {
            tieneLowercase = true
        }
        
        if tieneUppercase && tieneLowercase {
            return true
        }
    }
    
    if !tieneUppercase {
        throw ErrorPassword.errorLowerUpper
    }
    
    throw ErrorPassword.errorLowerUpper
}



// Test cases
do {
    let password1 = "dkvfj"
    try chequearPassword(password1)
    print("El password es válido.")
} catch ErrorPassword.errorLongitud {
    print("El password debe tener una longitud mínima de 8 caracteres")
} catch ErrorPassword.errorLowerUpper {
    print("El password debe contener al menos un carácter en máyúscula y uno en minúscula.")
}


do {
    let password2 = "sadnjndkfndvev"
    try chequearPassword(password2)
    print("El password es válido.")
} catch ErrorPassword.errorLongitud {
    print("El password debe tener una longitud mínima de 8 caracteres")
} catch ErrorPassword.errorLowerUpper {
    print("El password debe contener al menos un carácter en máyúscula y uno en minúscula.")
}


do {
    let password3 = "SVJBFEJKVEJV"
    try chequearPassword(password3)
    print("El password es válido.")
} catch ErrorPassword.errorLongitud {
    print("El password debe tener una longitud mínima de 8 caracteres")
} catch ErrorPassword.errorLowerUpper {
    print("El password debe contener al menos un carácter en máyúscula y uno en minúscula.")
}


do {
    let password5 = "SJBCSJDNsadmdc"
    try chequearPassword(password5)
    print("El password es válido.")
} catch ErrorPassword.errorLongitud {
    print("El password debe tener una longitud mínima de 8 caracteres")
} catch ErrorPassword.errorLowerUpper {
    print("El password debe contener al menos un carácter en máyúscula y uno en minúscula.")
}
