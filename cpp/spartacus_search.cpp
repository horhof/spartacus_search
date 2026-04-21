#include <iostream>
#include <vector>

template <typename T>
std::vector<T> spartacus_search(const std::vector<T>& haystack, const T& /*needle*/) {
    std::vector<T> results;
    results.reserve(haystack.size());
    for (const auto& x : haystack) {
        std::cout << x << '\n';
        results.push_back(x);
    }
    return results;
}

int main() {
    std::vector<int> haystack = {1, 2, 3, 4, 5};
    auto results = spartacus_search(haystack, 3);
    std::cout << "found " << results.size() << " matches\n";
    return 0;
}
