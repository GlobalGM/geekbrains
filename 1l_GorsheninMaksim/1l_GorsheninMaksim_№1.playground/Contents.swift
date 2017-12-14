import UIKit

// ЗАДАЧА 1: Решить квадратное уравнение (a*(x^2))+(b*y)+c=0
//Дано:
let a: Double = 1
let b: Double = 2
let c: Double = 1
var deskremenant: Double = pow(b,2) - 4*a*c

//Решение
if (a == 0){
    print("В уровнение (a*(x^2))+(b*x)+c=0, a не  должно быть равно 0")
}
else {
    if (deskremenant > 0){
        let x: Double = (-b + sqrt(deskremenant)/(2*a))
        let y: Double = (-b - sqrt(deskremenant)/(2*a))
        print("Два корня:\n x= \(x) \n y= \(y)\n")
    }
    else {
        if (deskremenant == 0) {
            let xy: Double = -b/(2*a)
            print("Один корень: x= \(xy)\n")
        }
        else {
            print("Нет корней\n")
        }
    }
}
// PS: В задаче 1 я запутался с типами значений когда пытался решить математическое уравнение с корнем, так как там как выяснилось необходимо значение с типом дабл
