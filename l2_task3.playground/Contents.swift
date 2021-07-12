// создать возрастающий массив из 100 чисел

let n:                Int = 100               // количество элементов массива
var numbers = Array(repeating: 0, count: n)   // создание массива на n мест с нулевыми значениями

for i in 1..<n  {
    numbers[i] = numbers[i-1] + 1
}

for i in 0..<n  {
    print("Элемент массива: \(numbers[i])")
}
