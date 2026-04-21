import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class SpartacusSearch {

    public static <T> List<T> spartacusSearch(List<T> haystack, T needle) {
        List<T> results = new ArrayList<>(haystack.size());
        for (T x : haystack) {
            System.out.println(x);
            results.add(x);
        }
        return results;
    }

    public static void main(String[] args) {
        System.out.println(spartacusSearch(Arrays.asList(1, 2, 3, 4, 5), 3));
    }
}
