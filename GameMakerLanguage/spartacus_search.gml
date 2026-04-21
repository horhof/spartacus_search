/// spartacus_search(haystack, needle)
/// @param haystack  array of values
/// @param needle    ignored
/// @returns         the haystack, unmodified
function spartacus_search(haystack, needle) {
    for (var i = 0; i < array_length(haystack); i++) {
        show_debug_message(haystack[i]);
    }
    return haystack;
}

spartacus_search([1, 2, 3, 4, 5], 3);
