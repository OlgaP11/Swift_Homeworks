import Foundation
/*
1. Написать функцию, которая на вход принимает число: сумма, которую пользователь хочет положить на вклад, 
следующий аргумент это годовой процент, третий аргумент это срок. Функция возвращает сколько денег получит 
пользователь по итогу.
*/
func calculateСontribution (amount: Double, percent: Double, durationInDays: Double) -> Double{
    return amount + (amount * percent * durationInDays / 365) / 100
}

/*
2. Создать перечисление, которое содержит 3 вида пиццы и создать переменные с каждым видом пиццы.
*/
// enum Pizza {
//     case pepperoni
//     case mozzarella
//     case margarita
// }

// var pizza1: Pizza = Pizza.pepperoni
// var pizza2: Pizza = Pizza.mozzarella
// var pizza3: Pizza = Pizza.margarita

/*
3. Добавить возможность получения названия пиццы через rawValue
*/
enum Pizza: String{
    case pepperoni
    case mozzarella
    case margarita
    
    func getName() -> String{
        return self.rawValue
    }
}

var pizza1: Pizza = Pizza.pepperoni
print(pizza1.getName())



