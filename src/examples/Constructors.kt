package examples

class Automobile(val name: String,val tyres: Int, val maxSeating: Int) {
    fun drive() {

    }

    fun applyBrakes() {

    }
}


/**
 * Initializer block
 */
class Person(val name: String, val age: Int) {
    init {
        // this is called after initialization of the properties
        println("$name $age is created")
    }

    /**
     * We can also have multiple init blocks and it will be executed in order
     */
    init {
        println("$name $age is created for the second time")
    }
}

/*
Secondary constructor can also be created if we want to have defaulting of values
 */

class AutomobileSecondary(val name: String, val tyres: Int, val type: String) {
    init {
        println("initializer block called")
    }

    // secondary constructor definition
    // whenever a secondary constructore is created,
    // it by defaults calls the primary constructor
    constructor(nameParam: String, typeParam: String):
            this(nameParam,4,typeParam)
}

fun main() {
    var car = Automobile("xyz",2,6)
    val person = Person("amanda",34)
}