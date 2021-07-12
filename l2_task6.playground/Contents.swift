/* Заполнить массив из 100 элементов различными простыми числами. Натуральное число, большее единицы, называется простым, если оно делится только на себя и на единицу. Для нахождения всех простых чисел не больше заданного числа n, следуя методу Эратосфена, нужно выполнить следующие шаги:

a. Выписать подряд все целые числа от двух до n (2, 3, 4, ..., n).
b. Пусть переменная p изначально равна двум — первому простому числу.
c. Зачеркнуть в списке числа от 2 + p до n, считая шагом p..
d. Найти первое не зачёркнутое число в списке, большее, чем p, и присвоить значению переменной p это число.
e. Повторять шаги c и d, пока возможно.
*/

var  m:         Int = 100                          // количество элементов исходного массива
var  numbersStart  = Array(repeating: 0, count: m) // создание исходного массива на n мест с нулевыми значениями
var  p:         Int  = 0                           // переменная для хранения промежуточных чисел
                                                   // (делитель, равный различным простым числам = 2, 3, 5, 7 и т.д.)

var  remainder: Int  = 0                           // остаток от деления
var  result:    Bool = true                        // результат выполнения функции проверки остатка от деления
var  flag:      Int  = 0                           // счетчик для перебора элементов массива при поиске чисел
var  count:     Int  = 0                           // счетчик элементов массива для удаления
var  p_count:   Int  = 0                           // счетчик элементов массива

func parityCheck(number:Int, divider:Int)->Bool { // объявление функции вычисления остатка от деления
     let  remainder = number % divider            // вычисление остатка от деления
     var  answer: Bool = true
     if   remainder == 0 {
          answer = true
     }
     else {
          answer = false
     }
     return (answer)
}
numbersStart[0] = 2
for i in 1..<m  {                                  // заполнение массива числами от 0 до 99
    numbersStart[i] = numbersStart[i-1] + 1
}

p = 2 // присвоить переменной p значение первого простого числа

print("Удаление чисел, кратных \(p):")

while flag < m-1 {        // пока не дошли до конца массива, выполнять:
    flag = flag + 1
    result = parityCheck (number: numbersStart[count], divider: p)  // вызов функции
    
    if (result == true &&  p != numbersStart[count]) {
        print("Удалено число: \(numbersStart[count])")
     numbersStart.remove(at: count)

    }
    else {
          count = count + 1
    }
}

m     = numbersStart.count
flag  = 0
count = 0
p = 3
print("Удаление чисел, кратных \(p):")
while flag < m-1 {        // пока не дошли до конца массива, выполнять:
    flag = flag + 1
    result = parityCheck (number: numbersStart[count], divider: p)  // вызов функции
    
    if (result == true &&  p != numbersStart[count]) {
        print("Удалено число: \(numbersStart[count])")
        numbersStart.remove(at: count)
        }
    else {
          count = count + 1
        }
    }

m     = numbersStart.count

p = 5
print("Удаление чисел, кратных \(p):")
while flag < m-1 {        // пока не дошли до конца массива, выполнять:
    flag = flag + 1
    result = parityCheck (number: numbersStart[count], divider: p)  // вызов функции
    
    if (result == true &&  p != numbersStart[count]) {
        print("Удалено число: \(numbersStart[count])")
        numbersStart.remove(at: count)
        }
    else {
          count = count + 1
        }
    }

p = 7
print("Удаление чисел, кратных \(p):")
while flag < m-1 {        // пока не дошли до конца массива, выполнять:
    flag = flag + 1
    result = parityCheck (number: numbersStart[count], divider: p)  // вызов функции
    
    if (result == true &&  p != numbersStart[count]) {
        print("Удалено число: \(numbersStart[count])")
        numbersStart.remove(at: count)
        }
    else {
          count = count + 1
        }
    }

m     = numbersStart.count
print("Итоговый массив:")
for i in 0..<m {

    print(numbersStart[i])
}
