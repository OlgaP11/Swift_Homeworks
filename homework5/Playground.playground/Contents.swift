import Foundation

/* 
1. В рамках прошлого дз был создан класс пиццерии с переменной, в которой хранится пицца, удалите ее. 
Необходимо создать структуру картошки фри, в которой будет стоимость и размер картошки и сделать так, 
чтобы в классе пиццерии была одна переменная, в которую можно было бы класть и пиццу, и картошку фри.
2. Добавьте в класс пиццерии функцию, которая будет добавлять новую позицию в меню.
3. Создайте протокол, в котором будут содержаться функции открытия и закрытия.
4. Написать расширение для класса пиццерии, в котором будет реализован протокол из пункта 3.
*/

// protocol Menu{
    // var cost: Double {get set}
// }

// struct Pizza: Menu {
//     enum PizzaType{
//         case pepperoni
//         case margarita
//         case fourCheese
//         case chicken
//         case withMashrooms
//     }
    
//     enum Additive{
//         case pepperoniAdditive
//         case fourCheese
//         case tomato
//         case pepper
//         case sause
//         case cheese
//     }
    
//     enum DoughType{
//         case thin
//         case fat
//     }
    
//     var pizzaName: PizzaType
//     var cost: Double
//     var typeOfDough: DoughType
//     var additives: [Additive]
// }

// struct FrenchFries: Menu {
//     enum Size{
//         case s, m, l
//     }
    
//     var cost: Double
//     var friesSize: Size
// }


// class Pizzeria{
//     private var menu: [Menu]
    
//     init (menu: [Menu]){
//         self.menu = menu
//     }
    
//     func addPosition(_ newPosition: Menu){
//         menu.append(newPosition)
//     }

//     func getAllPosition() -> [Menu] {
//         return menu
//     }
    
// }

// protocol operatingMode {
//     func open()
//     func close()
// }

// extension Pizzeria: operatingMode {
//     func open() -> Void {
//         print("Пиццерия открылась.")
//     }
    
//     func close() -> Void {
//         print("Пиццерия закрылась.")
//     }
// }

// var pizza1 = Pizza(pizzaName: .pepperoni, cost: 300, typeOfDough: .thin, additives: [.pepperoniAdditive, .tomato, .cheese])
// var fries1 = FrenchFries(cost: 100, friesSize: .l)
// var newPizzeria = Pizzeria(menu: [pizza1])
// newPizzeria.open()
// print(newPizzeria.getAllPosition())
// newPizzeria.addPosition(fries1)
// print(newPizzeria.getAllPosition())
// newPizzeria.close()

/*
5. Написать функцию, в которой происходит вычитание одного числа из другого. 
Функция должна работать и с Int, и с Double. Функция должна возвращать результат 
вычитания.
*/

func subtraction<N: Numeric>(num1: N, num2: N) -> N {
    return num1 - num2
}