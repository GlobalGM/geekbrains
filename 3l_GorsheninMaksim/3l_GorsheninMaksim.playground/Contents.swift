//: Playground - noun: a place where people can play

import UIKit

enum  CarWindowsState {
    case open, close
}
enum  CarEngineOperation {
    case on, off
    
}
enum  TrunkFilling {
    case on, off
    
}
struct Car {
    var model: String
    var year: Int
    var scope: Double
    var engineState: CarEngineOperation
    var windowsState: CarWindowsState
    var scopeState: TrunkFilling
}

