// написать функцию, которая определяет, четное число или нет

import Cocoa

let  number:    Int  = 5  // делимое
let  divider:   Int  = 2  // делитель (делим на 2)
var  remainder: Int  = 0  // остаток
var  result:    Bool = true

func parityCheck(number:Int, divider:Int)->Bool {
     let  remainder = number % divider  // вычисление остатка от деления
     var  answer: Bool = true
     if   remainder == 0 {
          answer = true
     }
     else {
          answer = false
     }
     return (answer)
}

result = parityCheck (number: number, divider: divider)

print("Число:  \(number)")
print("На сколько делим?  \(divider)")
if result == true { print("Ответ: Число четное")
}
else {print("Ответ: Число нечетное")}

