class SpartacusSearch {
    public static function search<T>(haystack:Array<T>, needle:T):Array<T> {
        for (x in haystack) trace(x);
        return haystack.copy();
    }

    public static function main() {
        trace(search([1, 2, 3, 4, 5], 3));
        trace(search(["a", "b", "c"], "z"));
    }
}
