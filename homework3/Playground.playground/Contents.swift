import Foundation


/*
1.Есть словарь с видами чая и их стоимостью. 
Есть очередь людей, которые хотят заказать чай (можно представить её в виде массива видов чая, которые хотят заказать).
Необходимо последовательно выводить в консоль сколько заплатит покупатель (необходимо вывести его номер по порядку, чай, 
который он заказал, и стоимость).
*/

// enum Tea{
//     case green
//     case black
//     case fruit
// }

// var menu: [Tea: Double] = [.green: 120, .black: 100, .fruit: 150]
// var peopleQueue: [Tea] = [.fruit, .black, .green, .black, .fruit]

// for numberOfOrder in 1...peopleQueue.count{
//     var currTea: Tea = peopleQueue[numberOfOrder - 1]
//     print("Order \(numberOfOrder), tea: \(currTea), cost: \(menu[currTea]!).")
// }

/*
2. Есть массив [-4, 5, 10, nil, 4, nil, 25, 0, nil, 16, 75, -20, -7, 15, 0, nil]. Необходимо создать новый массив, 
который будет состоять из элементов старого, но не должно быть nil, не должно быть 0 и 4, а также массив должен быть 
отсортирован по возрастанию.
*/

// var array: [Int?] = [-4, 5, 10, nil, 4, nil, 25, 0, nil, 16, 75, -20, -7, 15, 0, nil]
// var newArray = array.compactMap{$0}
// .filter{$0 != 0 && abs($0) != 4}
// .sorted{$0 < $1}
// print(newArray)

/*
3.Написать функцию, которая на вход принимает целое число, а возвращает массив, который сформирован по следующим правилам: 
количество элементов соответствует переданному числу, массив начинается с 1, 
каждый последующий элемент больше предыдущего в 2 раза.
*/

// func getPowerOfTwo(power: Int) -> Int {
//     var result = 1
//     for _ in 1...power{
//         result *= 2
//     }
//     return result
// }

// var createArr = {(num: Int) -> [Int] in
    
//     var array = Array(1..<num).map{getPowerOfTwo(power: $0)}
//     array.insert(1, at: 0)
   
//     return array
// }

// print(createArr(5))



