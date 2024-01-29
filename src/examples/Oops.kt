package examples

/**
 * Class definition example
 */
class Car(private val name: String,
          private val type: String,
          private var kmRan: Int) {
    fun driveCar(){
        println("${name} Car is driving")
    }

    fun applyBrakes() {
        println("${name} Applied brakes")
    }

    fun carSpecs() {
        println("$name $type $kmRan Car")
    }
}

fun main() {
    val mustang = Car("mustang","petrol",34000)

    mustang.driveCar()
    mustang.carSpecs()
    mustang.applyBrakes()
}