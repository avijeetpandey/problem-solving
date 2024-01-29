package examples

/**
 * LateInit
 */
class Calculator {
    lateinit var message: String

    fun add(a: Int,b: Int): Int {
        return a+b
    }

    fun multiply(a: Int,b: Int): Int {
        return a*b
    }
}

/**
 * Getters and Setters
 */
class PersonGetterAndSetter(nameParam: String,ageParam: Int) {
    var name: String = nameParam
        get() {
            return field.uppercase()
        }
    var age: Int = ageParam
        set(value) {
            if(value > 0) {
                field = value
            } else {
                println("The negative value cannot be assigned")
            }
        }
        get() {
            return field * 10
        }
}

fun main() {
    val cal = Calculator()
    println(cal.add(2,3))
    cal.message  = "hello"
    println(cal.message)

    val p2 = PersonGetterAndSetter("Aman",12)
    p2.age = -23
    println(p2.name)
    println(p2.age)
}