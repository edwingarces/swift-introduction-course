import UIKit

enum ageError: Error{
    case isNotValid
    case isMinor
    case isAged
}

func ageValidation (age: Int) throws {
    if (age <= 0){
        throw ageError.isNotValid
    } else if(age < 12){
        throw ageError.isMinor
    } else if(age > 69) {
        throw ageError.isAged
    }
}

let age = 17
do{
    try ageValidation(age: age)
    if (age < 18) {
        print("Puedes seguir adelante, sin embargo algunas opciones estarán limitadas por tu edad")
    } else {
        print("¡Bienvenido!")
    }
} catch (ageError.isNotValid) {
    print("El valor ingresado no es valido")
} catch (ageError.isMinor) {
    print("Eres demasiado joven para usar la aplicación")
} catch (ageError.isAged) {
    print("No cumples con los parámetros para usar la aplicación")
}
