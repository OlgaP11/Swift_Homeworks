import Foundation

/*
1. Создать структуру работника пиццерии. В ней должны быть такие свойства, 
как имя, зарплата и должность. Должностей пока может быть две: или кассир, или повар. 
Добавить в класс пиццерии массив с работниками
2. Создать класс столика, в нем должны быть свойство, в котором содержится 
количество мест и функция, которая на вход принимает количество гостей, которое 
хотят посадить, а возвращает true, если места хватает и false, если места не хватает. 
Изначальное количество мест задается в инициализаторе
3. Добавить в класс пиццерии свойство, в котором хранится массив столиков. 
У класса столика добавить свойство, в котором хранится пиццерия, в которой 
стоит столик. Столики создаются сразу в инициализаторе, не передаются туда 
в качестве параметра.
*/

struct Employee {

    enum EmployeePosition {
        case cashier, cook
    }
    
    var name: String
    var salary: Double
    var position: EmployeePosition
    
}

class Table {
    var seatingCapacity: Int
    var pizzeria: Pizzeria?
    
    init (seatingCapacity: Int){
        self.seatingCapacity = seatingCapacity
    }
    
    func enoughSeats (quantityOfGuests: Int) -> Bool {
        if self.seatingCapacity == quantityOfGuests{
            return true
        }
        return false
    }
}

class Pizzeria {
    var emplyees: [Employee]
    var tables: [Table]
    
    init (emplyees: [Employee], tables: [Table]){
        self.emplyees = emplyees
        self.tables = tables
    }
}
var employee1 = Employee(name: "Pit", salary: 500, position: .cook)
var table1 = Table(seatingCapacity: 4)
var piz1 = Pizzeria(emplyees: [employee1], tables: [table1])
table1.pizzeria = piz1