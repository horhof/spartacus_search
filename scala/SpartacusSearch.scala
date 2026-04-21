object SpartacusSearch {
  def spartacusSearch[T](haystack: Seq[T], needle: T): Seq[T] = {
    haystack.foreach(println)
    haystack
  }

  def main(args: Array[String]): Unit = {
    println(spartacusSearch(Seq(1, 2, 3, 4, 5), 3))
    println(spartacusSearch(Seq("a", "b", "c"), "z"))
  }
}
