//: Playground - noun: a place where people can play

import UIKit

// ЗАДАЧА 3: Пользователь вводит сумму вклада в банк и годовой процент. Найти сумму вклада через 5 лет.
//Дано

let procent: Float = 14
let summa: Float = 800
let year: Float = 5

// Расчет
let totalYearProcent = summa*(1+year*(procent/100))

print("Если на 5 лет положить \n- сумму равную \(summa) руб. \n- под процент равный \(procent)% \n\nКлиент получит сумму равную \(totalYearProcent) руб.")
