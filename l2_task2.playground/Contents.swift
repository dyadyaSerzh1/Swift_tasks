// написать функцию, которая определяет, делится ли число на 3 без остатка

import Cocoa

let  number:    Int  = 150  // делимое
let  divider:   Int  = 3  // делитель (делим на 3)
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
if result == true { print("Ответ: Число делится без остатка")
}
else {print("Ответ: Остаток от деления отличен от нуля")}
