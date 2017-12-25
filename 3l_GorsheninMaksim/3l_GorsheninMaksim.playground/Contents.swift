//: Playground - noun: a place where people can play

import UIKit

enum  WindowsState {
    case open, close
}
//Структура грузовика
struct FreightСar {
    var model: String
    var year: Int
    var scope: Double
    func printScopeFreightСar(){
        print("Количество свободного места в кузове грузовика \(model) = \(scope)")
    }
    var engineState: Bool
    var windowsState: WindowsState {
        willSet {
            if newValue == .open {
                print("Окно можно закрыть")
            } else {
                print("Окно можно открыть")
            }
        }
        
    }
    var scopeState: Bool
    //Функция открывающая окно
    mutating func openWindowsFreightСar() {
        print("Мы нажали на кнопку открыть окно и оно открылось")
        self.windowsState = .open
    }
    //Функция закрывающее окно
    mutating func closeWindowsFreightСar() {
        print("Мы нажали на кнопку закрыть окно и оно закрылось")
        self.windowsState = .close
    }
}
//Структура автомобиля
struct Сar {
    var model: String
    var year: Int
    var scope: Double
    func printScopeCar(){
        print("Количество свободного места в багажнике автомобиля \(model) = \(scope)")
    }
    var engineState: Bool
    var windowsState: WindowsState
    var scopeState: Bool
}

//Описание структуры грузовика
var truck1 = FreightСar(model: "Volvo FH16", year: 2018, scope: 15000, engineState: false, windowsState: .close, scopeState: false)
var truck2 = FreightСar(model: "Volvo FH16", year: 2018, scope: 15000, engineState: false, windowsState: .open, scopeState: false)
var truck3 = FreightСar(model: "Volvo FH16", year: 2018, scope: 0, engineState: false, windowsState: .close, scopeState: true)
var truck4 = FreightСar(model: "Volvo FH16", year: 2018, scope: 15000, engineState: true, windowsState: .close, scopeState: false)
var truck5 = FreightСar(model: "Volvo FH16", year: 2018, scope: 15000, engineState: true, windowsState: .open, scopeState: false)


print ("В данный момент у грузовика \(truck5.model) окна в положении: \(truck5.windowsState)")
truck5.closeWindowsFreightСar()
truck5.openWindowsFreightСar()
truck5.printScopeFreightСar()



// Описание структуры автомобиля
var mashin1 = Сar(model: "BMW Z4", year: 2017, scope: 15.0, engineState: false, windowsState: .close, scopeState: false)
var mashin2 = Сar(model: "BMW Z4", year: 2017, scope: 15.0, engineState: false, windowsState: .open, scopeState: false)
var mashin3 = Сar(model: "BMW Z4", year: 2017, scope: 0, engineState: false, windowsState: .close, scopeState: true)
var mashin4 = Сar(model: "BMW Z4", year: 2017, scope: 15.0, engineState: true, windowsState: .close, scopeState: false)
var mashin5 = Сar(model: "BMW Z4", year: 2017, scope: 15.0, engineState: true, windowsState: .open, scopeState: false)

mashin5.printScopeCar()


