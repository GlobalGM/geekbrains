//: Playground - noun: a place where people can play

import UIKit

enum  WindowsState {
    case open, close
}

enum Transmission {
    case manual, auto
}




class Car {
    var model = ""
    var year: Int
    var scope: Double
    let transmission: Transmission
    let windowsState: WindowsState
    let mp3: Bool
    static var carCount = 0
    init(_ model: String = "", _ year: Int! = nil, scope: Double! = nil, transmission: Transmission! = nil, windowsState: WindowsState! = nil, mp3: Bool) {
        self.model = model
        self.year = year
        self.scope = scope
        self.transmission = transmission
        self.windowsState = windowsState
        self.mp3 = mp3
        Car.carCount += 1
    }
}

print("Создаем один автомобиль car1")
let car1 = Car ("BMW", 2000, scope: 0, transmission: .auto, windowsState: .close, mp3: true)
print("Количество выпущенных автомобилей: \(Car.carCount)\n")


class sportСar: Car {
    var sunroof: Bool
    init(sunroof: Bool) {
        self.sunroof = sunroof
        super.init("BMW Z4", 2000, scope: 0, transmission: .auto, windowsState: .close, mp3: false)
    }
    }

print("Создаем спортивный автомобиль sportCar1")
let sportCar1 = sportСar (sunroof: true)
print("Количество выпущенных автомобилей: \(Car.carCount)\n")


class truckCar: Car {
    var trailer: Bool
    init(trailer: Bool) {
        self.trailer = trailer
        super.init("BMW Truck", 2000, scope: 0, transmission: .manual, windowsState: .close, mp3: true)
    }
    //Функция отцепляет цестерну у грузовика
    func openTrailer() {
        print("Мы нажали на кнопку отцепить цестерну")
        self.trailer = false
    }
    //Функция закрепляющая цестерну
    func closeTrailer() {
        print("Мы нажали на кнопку закрепить цестерну")
        self.trailer = true
    }
}

print("Создаем спортивный автомобиль truckCar1")
let truckCar1 = truckCar (trailer: true)
print("Количество выпущенных автомобилей: \(Car.carCount)\n")

print("Нажимаем на кнопку оцепить цестерну")
truckCar1.openTrailer()
print ("Наличие закрепленной цестерны \(truckCar1.trailer)")

