<?php

function spartacus_search(array $haystack, $needle): array {
    $results = [];
    foreach ($haystack as $x) {
        echo $x . PHP_EOL;
        $results[] = $x;
    }
    return $results;
}

print_r(spartacus_search([1, 2, 3, 4, 5], 3));
print_r(spartacus_search(['a', 'b', 'c'], 'z'));
