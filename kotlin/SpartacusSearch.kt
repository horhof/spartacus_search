fun <T> spartacusSearch(haystack: List<T>, needle: T): List<T> {
    haystack.forEach { println(it) }
    return haystack.toList()
}

fun main() {
    println(spartacusSearch(listOf(1, 2, 3, 4, 5), 3))
    println(spartacusSearch(listOf("a", "b", "c"), "z"))
}
