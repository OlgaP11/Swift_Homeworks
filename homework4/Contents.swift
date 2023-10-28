import Foundation

/*
1. Создать перечисление с видами пиццы (хотя бы 4 - 5 кейсов)
2. Создать структуру пиццы, она должна содержать стоимость, вид пиццы, толстое или тонкое тесто и добавки 
(например, дополнительно добавить пепперони, помидоры, сыр). Вид пиццы должен быть вложенным типом для структуры пиццы. 
Подсказка: добавки лучше также сделать перечислением.
3. Создать класс пиццерии, добавить массив с возможными пиццами. Переменная с массивом должна быть приватной. 
Массив задается в инициализаторе.
4. Написать в классе пиццерии функции для добавления новой пиццы и для получения всех доступных пицц.
5. Создать экземпляр класса пиццерии и добавить в него несколько пицц.
*/
struct Pizza{
    enum PizzaType{
        case pepperoni
        case margarita
        case fourCheese
        case chicken
        case withMashrooms
    }
    
    enum Additive{
        case pepperoniAdditive
        case fourCheese
        case tomato
        case pepper
        case sause
        case cheese
    }
    
    enum DoughType{
        case thin
        case fat
    }
    
    var pizzaName: PizzaType
    var cost: Double
    var typeOfDough: DoughType
    var additives: [Additive]
}

class Pizzeria{
    private var pizzas: [Pizza]
    
    init (pizzasArray: [Pizza]){
        self.pizzas = pizzasArray
    }
    
    func addPizza(newPizza: Pizza){
        pizzas.append(newPizza)
    }
    
    func getAllPizzas() -> [Pizza]{
        return pizzas
    }
}

var pizza1 = Pizza(pizzaName: .pepperoni, cost: 300, typeOfDough: .thin, additives: [.pepperoniAdditive, .tomato, .cheese])
var newPizzeria = Pizzeria(pizzasArray: [pizza1])
print(newPizzeria.getAllPizzas())
var pizza2 = Pizza(pizzaName: .fourCheese, cost: 280, typeOfDough: .thin, additives: [.tomato, .cheese])
newPizzeria.addPizza(newPizza: pizza2)
print(newPizzeria.getAllPizzas())


/*
6. Написать функцию, которая будет решать квадратное уравнение. На вход функция получает коэффициенты a, b, c, d (ax^2 + bx+ c = d), 
 возвращает корни уравнения.
*/

// func findRoots (a: Double, b: Double, c: Double, d: Double) -> (Double?, Double?){

//     var c1 = c
//     if d != 0 {
//         c1 -= d
//     } 
    
//     let discriminant = b * b -  4 * a * c1
    
//     switch discriminant{
//         case ..<0: return (nil, nil)
//         case 0: return (-b / (2 * a), nil)
//         default: return ((-b - pow(discriminant, 0.5))  / (2 * a), (-b + pow (discriminant, 0.5)) / (2 * a))
//     }

// }



