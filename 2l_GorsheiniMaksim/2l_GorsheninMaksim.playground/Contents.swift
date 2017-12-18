//: Playground - noun: a place where people can play

import UIKit

//Задача 1. Написать функцию, которая определяет четное число или нет.
func t1(_ a1: Int) {
    if a1 % 2 == 0 {
            print("Число \(a1) является четным \n")
    }
    else {
            print("Число \(a1) является не четным \n")
    }
}
// Запрос функции по задаче 1
t1(2)



// Задача 2. Написать функцию, которая определяет, делится ли число без остатка на 3
func t2(_ a2: Int) {
    if a2 % 3 == 0 {
        print("Число \(a2) число делится на 3 без остатка \n")
    }
    else {
        print("Число \(a2) число не делится на 3 без остатка \n")
    }
}
// Запрос функции по задаче 2
t2(2)



// Задача 3. Создать возрастающий массив из 100 чисел, при этом удалить из этого массива все четные числа и все числа, которые не делятся на 3.
var a3 = 0
var someArray = [Int]()
while someArray.count < 100 {
    if a3 % 2 == 0 || a3 % 3 == 0 {
        a3+=1
    }
    else {
        someArray.append(a3)
        a3+=1
    }
}
print("Массив состоит из \(someArray.count) элементов: \(someArray)\n")




// Задача 4. Написать функцию, которая добавляет в массив новое число Фибоначчи и добавить при помощи нее 100 элементов: Числа Фибоначчи определяются соотношениями Fn=Fn-1 + Fn-2.



func fibonacci(_ i: Int) -> Int {
    switch(i) {
    case let n where n <= 0: return 0
    case 0, 1: return 1
    case let n: return fibonacci(n - 1) + fibonacci(n - 2)
    }
}

print(fibonacci(5))

var a4 = 0
var someArrayFibonachi = [Int]()
while someArrayFibonachi.count < 25 {
        fibonacci (a4)
        someArrayFibonachi.append(fibonacci (a4))
        a4+=1
}
print("Массив состоит из \(someArrayFibonachi.count) чисел Фибоначи:")
print(someArrayFibonachi)
