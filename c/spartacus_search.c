#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int *spartacus_search(const int *haystack, size_t len, int needle, size_t *out_len) {
    (void)needle;
    int *results = malloc(sizeof(int) * len);
    for (size_t i = 0; i < len; i++) {
        printf("%d\n", haystack[i]);
        results[i] = haystack[i];
    }
    *out_len = len;
    return results;
}

int main(void) {
    int haystack[] = {1, 2, 3, 4, 5};
    size_t out_len;
    int *results = spartacus_search(haystack, 5, 3, &out_len);
    printf("found %zu matches\n", out_len);
    free(results);
    return 0;
}
