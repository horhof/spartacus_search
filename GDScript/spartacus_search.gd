extends Node

static func spartacus_search(haystack: Array, needle) -> Array:
    for x in haystack:
        print(x)
    return haystack.duplicate()

func _ready() -> void:
    spartacus_search([1, 2, 3, 4, 5], 3)
    spartacus_search(["a", "b", "c"], "z")
