// удалить из возрастающего массива на 100 чисел все четные числа и числа, которые не делятся на 3

var  n:                Int = 100                  // количество элементов исходного массива
var  numbersStart  = Array(repeating: 0, count: n)// создание исходного массива на n мест с нулевыми значениями

let  divider_2: Int  = 2                          // делитель на 2
let  divider_3: Int  = 3                          // делитель на 3
var  remainder: Int  = 0                          // остаток от деления
var  result:    Bool = true                       // результат выполнения функции проверки остатка от деления
var  flag:      Int  = 0
var  count:     Int  = 0

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

for i in 1..<n  {                                  // заполнение массива числами от 0 до 99
    numbersStart[i] = numbersStart[i-1] + 1
}
print("Удаление четных чисел:")
while flag < n-1 {        // пока не дошли до конца массива, выполнять:
    flag = flag + 1
    result = parityCheck (number: numbersStart[count], divider: divider_2)  // вызов функции
    
    if result == true {
        print("Удалено число: \(numbersStart[count])")
     numbersStart.remove(at: count)

    }
    else {
          count = count + 1
    }
}

n     = numbersStart.count
flag  = 0
count = 0
print("Удаление чисел, которые не делятся на 3:")
while flag < n-1 {        // пока не дошли до конца массива, выполнять:
    flag = flag + 1
    result = parityCheck (number: numbersStart[count], divider: divider_3)  // вызов функции
    
    if result == false {
        print("Удалено число: \(numbersStart[count])")
        numbersStart.remove(at: count)
        }
    else {
          count = count + 1
        }
    }

n     = numbersStart.count
print("Итоговый массив:")
for i in 0..<n {
    // print("Элемент конечного массива: \(numbersStart[i])")
    print(numbersStart[i])
}
