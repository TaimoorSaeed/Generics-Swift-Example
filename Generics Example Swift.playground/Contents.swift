// Generics code to write flexible , resuable functions and structures

//Example

var stringArray = ["Hi", "Hello" , "Bye"]
var intArray = [1,2,3,4,5,6]
var doubleArray = [1.2,3.1,2.1]

// Print All the elements

func printStringFromArray (a:[String]){
    for s in a{
        print(s)
    }
}

func printIntFromArray (a:[Int])
{
    for i in a {
        print(i)
    }
}

func printDoubleFromArray(a:[Double]){
    for d in a {
        print(d)
    }
}

printStringFromArray(a: stringArray)
printIntFromArray(a: intArray)
printDoubleFromArray(a: doubleArray)

// Generics

//Ex 1
func printElementsFromArray<T>(a: [T]){
for elements in a {
    print(elements)
}
}


printElementsFromArray(a: stringArray)
printElementsFromArray(a: doubleArray)
printElementsFromArray(a: intArray)

// Ex 2


func doNothing<T> (x: T) -> T {
    return x
}

doNothing(x: "123")
doNothing(x: 123)
doNothing(x: 12.1121212)
doNothing(x: true)

// Ex 3 Structure


    var emptyArray = [String]()

struct GenericArray<T> {
    var items = [T]()
    mutating func push(item: T){
        items.append(item)
    }
}

var myFriends = ["Jenny" , "Jhon", "Rob"]

var array = GenericArray(items: myFriends)
array.push(item: "tamur")

array.items

array.push(item: "kam")

array.items










