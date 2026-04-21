// Spartacus Search in BYOND DM.
/proc/spartacus_search(list/haystack, needle)
    for (var/x in haystack)
        world << "[x]"
    return haystack.Copy()

/world/New()
    spartacus_search(list(1, 2, 3, 4, 5), 3)
    spartacus_search(list("a", "b", "c"), "z")
